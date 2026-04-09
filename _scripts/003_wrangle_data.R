
# Wrangle data

# Finesse the data --------------------------------------------------------

# Select variables

dta <-
  dta |>
  select(
    id,
    ctr_n,
    ctr,
    yr,
    mn,
    cst_n,
    cst,
    mag,
    pty_n,
    pty,
    can,
    cv1,
    pv1,
    cv2,
    pv2,
    seat
  )


# Filter the data to 1900 onwards

dta <-
  dta |>
  filter(yr >= 1900)


# Arrange the data according to id, cst, and seats won

dta <-
  dta |>
  arrange(
    id,
    cst,
    desc(seat)
  )


# Replace m49 with iso3 character code, allocating unrecognised territories like
# Kosovo, Taiwan, etc. by hand

dta <-
  dta |>
  mutate(
    iso3 =
      case_when(
        ctr_n == "Kosovo" ~ "XKX",
        ctr_n == "Somaliland" ~ "SML",
        ctr_n == "Taiwan" ~ "TWN",
        TRUE ~ countrycode(ctr, "un", "iso3c")
      ) |>
      suppressWarnings()
  ) |>
  relocate(iso3, .after = ctr_n) |>
  select(
    -ctr,
    -ctr_n
  )


# Merge in the country name, subregion, and region from the UN geoscheme

dta <-
  dta |>
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

dta |>
  write_csv("_codex/clea_clea.csv")


# Create dummy variables to indicate if an election was uncontested (-992) or
# suspended (-994)

# dta <-
#   dta |>
#   mutate(
#     uncontested =
#       if_else(
#         pv == -992 & cv == -992,
#         TRUE,
#         FALSE
#       ),
#     suspended =
#       if_else(
#         pv == -994,
#         TRUE,
#         FALSE
#       )
#   )


# Since we now have the uncontested/suspended dummies, we can mark any values
# less than 0 as missing

# dta <-
#   dta |>
#   mutate(
#     across(
#       where(is.numeric),
#       \(x) if_else(x < 0, NA, x)
#     )
#   ) |>
#   mutate(
#     across(
#       where(is.character),
#       \(x) if_else(x %in% c("-990", "-992"), NA, x)
#     )
#   )
