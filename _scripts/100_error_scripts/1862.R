
# Malaysia (August, 1974)

# Data from:
#
# https://github.com/TindakMalaysia/HISTORICAL-ELECTION-RESULTS/blob/main/1974-ELECTION-RESULTS/MALAYSIA_1974_PARLIAMENT_RESULTS.csv

# cst == 107 is spelt in two different ways. Deferring to the spelling on github.

dta$cst_n[
  dta$id == 1862 &
    dta$cst == 107
] <- "District 107 (Renggam)"
