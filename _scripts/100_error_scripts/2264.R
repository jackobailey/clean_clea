
# Lebanon (June, 1957)

# Data from:
#
# https://en.wikipedia.org/wiki/1957_Lebanese_general_election
#
# 1957 district seat totals: Baaklyn-Joun had 3 seats and Beirut-2 had 6 seats.

dta$mag[
  dta$id == 2264 &
    dta$cst == 4
] <- 3

dta$mag[
  dta$id == 2264 &
    dta$cst == 8
] <- 6
