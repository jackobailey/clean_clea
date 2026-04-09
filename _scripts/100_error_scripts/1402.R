
# Germany (September, 2013)

# Data from:
#
# https://en.wikipedia.org/wiki/Results_of_the_2013_German_federal_election

# In Deggendorf, the CDU won the seat

dta$seat[
  dta$id == 1402 &
    dta$cst == 58 &
    dta$pty == 8
] <- 1


# In Göttingen, the SPD won the seat

dta$seat[
  dta$id == 1402 &
    dta$cst == 103 &
    dta$pty == 51
] <- 1


# In Mittelsachsen, the CDU won the seat

dta$seat[
  dta$id == 1402 &
    dta$cst == 183 &
    dta$pty == 7
] <- 1


# In Mittelsachsen, the CDU won the seat

dta$seat[
  dta$id == 1402 &
    dta$cst == 901 &
    dta$pty == 7
] <- 1


# The state-level districts list the constituency vote totals, not the list vote
# totals that determine the compensatory seat allocations. As such, I'm going to
# drop this election from the data.
#
# https://de.wikipedia.org/wiki/Bundestagswahl_2013/Wahlergebnisse_nach_Bundesländern

dta <-
  dta |>
  filter(id != 1402)
