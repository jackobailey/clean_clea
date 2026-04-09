# Canada (October, 1908)

# Data from:
#
# https://en.wikipedia.org/wiki/Kings_(Nova_Scotia_federal_electoral_district)
#
# Best available riding-history source for distinguishing the duplicate Kings
# districts.

# There are two constituencies called Kings. cst == 81 refers to the one in
# Nova Scotia.

dta$cst_n[
  dta$id == 779 &
    dta$cst == 81
] <- "kings (nova scotia)"
