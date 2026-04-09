
# Samoa (March, 2006)

# Data from:
#
# https://en.wikipedia.org/wiki/2011_Samoan_general_election#By_constituency

# cst == 26 was uncontested, so should have vote counts of -992

dta$cv1[
  dta$id == 1286 &
    dta$cst == 26
] <- -992

dta$pv1[
  dta$id == 1286 &
    dta$cst == 26
] <- -992
