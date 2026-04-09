
# Use V-Dem to create simple systems classifier

# Housekeeping ------------------------------------------------------------

# Instantiate the V-Dem data

data(vdem)


# Load data on missing electoral systems

missing_electoral_systems <-
  here(
    "_data",
    "man",
    "missing_electoral_systems.csv"
  ) |>
  read_csv(show_col_types = FALSE) |>
  arrange(iso3, year)



# Wrangle data ------------------------------------------------------------

# Select variables

vdem <-
  vdem |>
  select(
    iso3 = country_text_id,
    year,
    electoral_system = v2elloelsy,
    threshold = v2elthresh
  ) |>
  tibble()


# Merge missing electoral systems data into V-Dem data

for(i in 1:nrow(missing_electoral_systems)){

  # Check if case appears in V-Dem data

  case_appears <-
    vdem |>
    filter(
      iso3 == missing_electoral_systems$iso3[i],
      year == missing_electoral_systems$year[i]
    ) |>
    nrow()


  # Append data

  if(case_appears == 0){

    vdem <-
      vdem |>
      bind_rows(
        missing_electoral_systems[i, ]
      )

  } else {

    vdem$electoral_system[
      vdem$iso3 == missing_electoral_systems$iso3[i] &
        vdem$year == missing_electoral_systems$year[i]
      ] <- missing_electoral_systems$electoral_system[i]

  }

}



# Fix errors and add missing cases ----------------------------------------

# V-Dem incorrectly codes Cote d'Ivoire as using a FPTP then a two-round system
# from 1995 onwards, but it actually used a block voting system throughout.

vdem$electoral_system[
  vdem$iso3 == "CIV" &
    is.na(vdem$electoral_system) == F
] <- 3


# V-Dem incorrectly codes Barbados pre-1971 as using first-past-the-post, but
# it used party block voting.

vdem$electoral_system[
  vdem$iso3 == "BRB" &
    vdem$year %in% 1:1970 &
    is.na(vdem$electoral_system) == F
] <- 3


# V-Dem does not code that Papua New Guinea used the alternate vote in 1972

vdem$electoral_system[
  vdem$iso3 == "PNG" &
    vdem$year == 1972
] <- 2


# Singapore used block voting in 1948

vdem$electoral_system[
  vdem$iso3 == "SGP" &
    vdem$year == 1948
] <- 4



# Singapore used FPTP in 1951, 1955, and 1959

vdem$electoral_system[
  vdem$iso3 == "SGP" &
    vdem$year %in% c(1951, 1955, 1959)
] <- 0


# Sri Lanka used FPTP in 1947

vdem$electoral_system[
  vdem$iso3 == "LKA" &
    vdem$year == 1947
] <- 0


# South Africa used FPTP in 1984

vdem$electoral_system[
  vdem$iso3 == "ZAF" &
    vdem$year == 1984
] <- 0


# Zambia used FPTP in 1964

vdem$electoral_system[
  vdem$iso3 == "ZMB" &
    vdem$year == 1964
] <- 0


# New Zealand used FPTP in 1943

vdem$electoral_system[
  vdem$iso3 == "NZL" &
    vdem$year == 1943
] <- 0


# India used FPTP in 1985 and 1992

vdem$electoral_system[
  vdem$iso3 == "IND" &
    vdem$year %in% c(1985, 1992)
] <- 0


# Kenya used FPTP in 1957

vdem$electoral_system[
  vdem$iso3 == "KEN" &
    vdem$year == 1957
] <- 0


# The Philippines used FPTP in 1969

vdem$electoral_system[
  vdem$iso3 == "PHL" &
    vdem$year == 1969
] <- 0


# Madagascar used a parallel system in 2014

vdem$electoral_system[
  vdem$iso3 == "MDG" &
    vdem$year == 2014
] <- 5


# The Dominican Republic used List PR in 1962 (I think!)

vdem$electoral_system[
  vdem$iso3 == "DOM" &
    vdem$year == 1962
] <- 7


# Kuwait uses Single non-transferable vote in multimember districts

vdem$electoral_system[
  vdem$iso3 == "KWT" &
    vdem$year %in% c(1963, 1967, 1971, 1975, 1981, 1985, 1990, 1992, 1996, 2019)
] <- 10


# In 1980 and 1981, Honduras used List PR with small multi-member districts

vdem$electoral_system[
  vdem$iso3 == "HND" &
    vdem$year %in% 1980:1981
] <- 7


# In 1998, Ecuador used a List PR with small multi-member districts

vdem$electoral_system[
  vdem$iso3 == "ECU" &
    vdem$year == 1998
] <- 7



# Recode variables --------------------------------------------------------

# Recode the electoral system variable

vdem <-
  vdem |>
  mutate(
    electoral_system =
      electoral_system |>
      factor(
        levels = 0:12,
        labels =
          c(
            "First-past-the-post in single-member districts",
            "Two-round system in single-member districts",
            "Alternative vote in single-member districts",
            "Block vote in multi-member districts",
            "Party block vote in multi-member districts",
            "Parallel (SMD/PR)",
            "Mixed-member proportional (SMD with PR compensatory seats)",
            "List PR with small multi-member districts",
            "List PR with large multi-member districts",
            "Single-transferable vote in multi-member districts",
            "Single non-transferable vote in multi-member districts",
            "Limited vote in multi-member districts",
            "Borda Count in single- or multi-member districts"
          )
      )
  )


# Create an indicator variable that distinguishes simple and complex systems

vdem <-
  vdem |>
  mutate(
    simple_system =
      case_when(
        is.na(electoral_system) == T ~ NA,
        electoral_system %in% c(
          "First-past-the-post in single-member districts",
          # "Two-round system in single-member districts",
          # "Alternative vote in single-member districts",
          # "Block vote in multi-member districts",
          # "Party block vote in multi-member districts",
          # "Parallel (SMD/PR)",
          # "Mixed-member proportional (SMD with PR compensatory seats)",
          "List PR with small multi-member districts",
          "List PR with large multi-member districts"
          # "Single-transferable vote in multi-member districts",
          # "Single non-transferable vote in multi-member districts",
          # "Limited vote in multi-member districts"
          # "Borda Count in single- or multi-member districts"
        ) ~ TRUE,
        TRUE ~ FALSE
      )
  ) |>
  relocate(simple_system, .after = electoral_system)


# Uruguay uses list PR in multi-member districts, however, the quotas are set at
# the national -- not the district -- level. As such, it is not a simple system.

vdem$simple_system[
  vdem$iso3 == "URY"
] <- FALSE


# Likewise, Slovenia uses open list PR, but constituencies have sub-districts
# that are allocated to parties depending on what happens in the constituency
# and the country as a whole. As such, it is not a simple system.

vdem$simple_system[
  vdem$iso3 == "SVN"
] <- FALSE


# https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2206403
# https://www.apd.ro/files/publicatii/brosura_uninominal.pdf
#
# Between 1990 and 2008, Romania allocated seats at both the constituency and
# national level, which creates some distortions and so is not a simple system

vdem$simple_system[
  vdem$iso3 == "ROU" &
    vdem$year %in% 1990:2007
] <- FALSE


# Argentinian voters vote for parties that are part of alliances called "lemas".
# The seats are allocated at the lema level, but the votes are cast at the party
# level. As such, it's not possible to group the results into the appropriate
# alliances without a lot of extra work (they can differ by district). I will
# consider Argentina not to have a simple system.

vdem$simple_system[vdem$iso3 == "ARG"] <- FALSE


# Austria allocates seats in a multi-stage process, such that seats are not
# allocated within electoral districts. As such, it is not a simple system.

vdem$simple_system[vdem$iso3 == "AUT"] <- FALSE


# Indonesia uses a system where voters vote for candidates, like in an open list
# system, but seats are allocated to parties unless candidates pass some
# threshold. It also seems that there might be some allocations that happen at
# provincial levels. This doesn't sound simple to me, so I'll mark them as such.

vdem$simple_system[vdem$iso3 == "IDN" & vdem$year >= 2004] <- FALSE


# Estonia uses compensatory seats allocated at the national level, so is not a
# simple system.

vdem$simple_system[vdem$iso3 == "EST" & vdem$year >= 1992] <- FALSE


# In Latvia, voters can cast both positive and negative votes for candidates. I
# will treat this as complex.

vdem$simple_system[vdem$iso3 == "LVA"] <- FALSE


# According to this document, Ecuador uses a mixed system, which might explain
# why some of its results are a bit suspect.

vdem$electoral_system[vdem$iso3 == "ECU"]


# Recode threshold to show if there is or is not a legal threshold

vdem <-
  vdem |>
  mutate(
    threshold =
      if_else(
        threshold > 0,
        TRUE,
        FALSE
      )
  )
