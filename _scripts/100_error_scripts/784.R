# Canada (September, 1926)

# Data from:
#
# https://en.wikipedia.org/wiki/Northumberland_(Ontario_federal_electoral_district)#Election_results
#
# Best available riding-history source for distinguishing the duplicate
# Northumberland districts.

# There are two Northumberland constituencies. cst == 131 refers to
# Northumberland in Ontario.

dta$cst_n[
  dta$id == 784 &
    dta$cst == 131
] <- "northumberland (ontario)"
