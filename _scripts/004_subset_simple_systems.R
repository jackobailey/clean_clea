
# Subset to simple systems and prepare data for analysis

# Wrangle data ------------------------------------------------------------

# Subset to elections from 1900 onwards

dta <-
  dta |>
  filter(yr >= 1900)


# Select and rename variables

dta <-
  dta |>
  select(
    id,
    ctr,
    yr,
    mn,
    cst_n,
    cst,
    m = mag,
    pty_n,
    pty,
    can,
    c = cv1,
    p = pv1,
    s = seat
  )


# Replace ctr (the country-specific m49 UN code) with iso3 codes and data from
# the UN geoscheme, allocating unrecognised territories like Kosovo, Taiwan, and
# Somaliland by hand. This throws an error about Taiwan (1001), Kosovo (1002),
# and Somaliland (1003) which I have suppressed.

dta <-
  dta |>
  mutate(
    iso3 =
      case_when(
        ctr == 1001 ~ "TWN",
        ctr == 1002 ~ "XKX",
        ctr == 1003 ~ "SML",
        TRUE ~ countrycode(ctr, "un", "iso3c")
      ) |>
      suppressWarnings()
  ) |>
  relocate(iso3, .after = id) |>
  select(-ctr) |>
  left_join(
    here(
      "_data",
      "man",
      "un_geoscheme.csv"
    ) |>
      read_csv(show_col_types = FALSE) |>
      select(-m49, -iso2),
    by = "iso3"
  ) |>
  relocate(country, .after = iso3) |>
  relocate(subregion, .after = country) |>
  relocate(region, .after = subregion)


# Filter out suspended elections (-994) and create a dummy to indicate if any
# elections were uncontested (-992)

dta <-
  dta |>
  filter(!(p == -994 & c == -994)) |>
  mutate(
    uncontested =
      if_else(
        p == -992 & c == -992,
        TRUE,
        FALSE
      )
  )


# Where elections are uncontested, their vote counts are coded as -992. But, to
# be able to use them, I cannot treat them as missing. For these data to work
# with descriptive statistics down the line, they cannot be zero. As such, I
# will allocate a single vote in these cases.

dta <-
  dta |>
  mutate(
    c = if_else(uncontested == TRUE, 1, c),
    p = if_else(uncontested == TRUE, 1, p)
  )


# Since we now have the uncontested dummy, we can now mark any values less than
# zero as missing without losing information

dta <-
  dta |>
  mutate(
    across(
      where(is.numeric),
      \(x) if_else(x < 0, NA, x)
    )
  ) |>
  mutate(
    across(
      where(is.character),
      \(x) if_else(x %in% c("-990", "-992"), NA, x)
    )
  )


# Now I can replace any missing values on the party vote variable with the value
# on the candidate vote variable to get a single vote variable.

dta <-
  dta |>
  group_by(id, cst, pty) |>
  mutate(party_n = n()) |>
  ungroup() |>
  mutate(
    v =
      case_when(
        party_n > 1 ~ c,
        is.na(c) == TRUE & is.na(p) == FALSE ~ p,
        TRUE ~ c
      )
  ) |>
  relocate(v, .before = s) |>
  select(-party_n)



# Subset to simple systems ------------------------------------------------

# Merge in the V-Dem data and subset to simple systems

dta <-
  dta |>
  left_join(
    vdem,
    by = join_by(iso3, yr == year)
  ) |>
  filter(simple_system == TRUE) |>
  select(-simple_system)


# Aggregate to the party-level where systems use party-list PR and the candidate
# level where they use first-past-the-post or the single non-transferable vote

pr <-
  dta |>
  filter(
    electoral_system %in% c(
      "List PR with small multi-member districts",
      "List PR with large multi-member districts"
    )
  ) |>
  group_by(
    id,
    iso3,
    country,
    subregion,
    region,
    yr,
    mn,
    cst_n,
    cst,
    pty_n,
    pty
  ) |>
  summarise(
    m = unique(m),
    v = sum(v),
    s = sum(s),
    uncontested = unique(uncontested),
    .groups = "drop"
  )

dta <-
  dta |>
  filter(
    !electoral_system %in% c(
      "List PR with small multi-member districts",
      "List PR with large multi-member districts"
    )
  ) |>
  bind_rows(pr)

rm(pr)


# The United States of America and Panama are both included in these data, but
# use fusion voting (and in the case of some US states, the alternate vote).
# Ideally, I'd merge these together, but there are issues with the US data that
# make this difficult. Further, since they are all in single-member districts,
# they don't contribute a great deal to the modelling since the effective no.
# of seat-winning parties must be 0 and there are plenty of other single member
# districts. Panama is tricky too.
#
# As such, I will drop both countries from the data.

dta <-
  dta |>
  filter(!iso3 %in% c("USA", "PAN"))


# Wherever an election used first-past-the-post and the district magnitude is
# missing, we can assume that it had a district magnitude of 1.

dta$m[
  is.na(dta$m) &
    dta$electoral_system == "First-past-the-post in single-member districts"
] <- 1


# Likewise, wherever the district magnitude was 1 and the seat allocations are
# missing, we can assume that the largest vote-winner won the seat.

dta <-
  dta |>
  group_by(id, cst) |>
  mutate(
    s =
      case_when(
        m == 1 & all(is.na(s) == TRUE) & all(is.na(v) == FALSE) & v == max(v) ~ 1,
        m == 1 & all(is.na(s) == TRUE) & all(is.na(v) == FALSE) ~ 0,
        TRUE ~ s
      )
  ) |>
  ungroup()


# Where the district magnitude is missing, I will assume that it is the sum of
# the seats allocated in the data

dta <-
  dta |>
  group_by(id, cst) |>
  mutate(
    m =
      ifelse(
        all(is.na(m) == TRUE) & all(is.na(s) == FALSE),
        sum(s),
        m
      )
  ) |>
  ungroup()


# Subset the data to only those elections where there are no missing votes or
# seats

dta <-
  dta |>
  group_by(id) |>
  filter(
    !any(is.na(v) == TRUE),
    !any(is.na(s) == TRUE)
  ) |>
  ungroup()


# Subset to elections that do not aggregate independent candidates or minor
# parties

dta <-
  dta |>
  group_by(id) |>
  filter(
    !any(pty == 4000),
    !any(pty == 6000)
  ) |>
  ungroup()


# Subset to elections that are rank-size consistent

dta <-
  dta |>
  group_by(id, cst) |>
  mutate(rank_size = rank_size(v, s)) |>
  ungroup() |>
  filter(rank_size == TRUE) |>
  select(-rank_size)


# Compute each candidate/party's vote and seat share

dta <-
  dta |>
  group_by(id, cst) |>
  mutate(
    pv = v / sum(v),
    ps = s / sum(s)
  ) |>
  ungroup() |>
  relocate(pv, .after = s) |>
  relocate(ps, .after = pv)


# Arrange the data according to id, cst, pv, and ps

dta <-
  dta |>
  arrange(
    id,
    cst,
    desc(pv),
    desc(ps)
  )
