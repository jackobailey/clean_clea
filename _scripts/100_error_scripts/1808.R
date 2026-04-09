# Malaysia (May, 1969)

# Data from:
#
# https://en.wikipedia.org/wiki/Kanowit_(federal_constituency)

# In District 138 (Kanowit), Joseph Unting Ak Umang won, not Lee Ghin Ching.

dta$seat[
  dta$id == 1808 &
    dta$cst == 138 &
    dta$can == "Lee Ghin Ching"
] <- 0

dta$seat[
  dta$id == 1808 &
    dta$cst == 138 &
    dta$can == "Unting Ak Umang"
] <- 1
