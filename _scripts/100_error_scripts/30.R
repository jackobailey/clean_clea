
# Dominican Republic (July, 1966)

# Data from:
#
# https://resultadoselectorales.jce.gob.do/boletines/1966/nivel1966.htm

# As a national constituency, I will code this as 900+ for my own purposes

dta$cst[
  dta$id == 30 &
    dta$cst == 1
] <- 901


# The data include a single national constituency. However, the data appear to
# suggest that seat allocation happened at the province level and not within a
# single national district. This may explain why the aggregate results also
# violate the logical requirement that no party have a vote share greater than
# the threshold of exclusion (1 / [m + 1]) without winning a seat. Since I can't
# find seat data for this election, I will remove it from the data.

dta <-
  dta |>
  filter(id != 30)
