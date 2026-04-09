# Pakistan (February, 2008)

# Data from:
#
# https://en.wikipedia.org/wiki/NA-38_Karak
# https://en.wikipedia.org/wiki/NA-1_Upper_Chitral-cum-Lower_Chitral
# https://en.wikipedia.org/wiki/NA-37_Kurram
# https://en.wikipedia.org/wiki/NA-82_Sargodha-I
# https://en.wikipedia.org/wiki/NA-263_Quetta-II

# In NA-15, MMA won the seat, not the PPPP.

dta$seat[
  dta$id == 925 &
    dta$cst == 15 &
    dta$pty == 58
] <- 0

dta$seat[
  dta$id == 925 &
    dta$cst == 15 &
    dta$pty == 29
] <- 1


# In NA-32, PML won the seat, not the PPPP.

dta$seat[
  dta$id == 925 &
    dta$cst == 32 &
    dta$pty == 58
] <- 0

dta$seat[
  dta$id == 925 &
    dta$cst == 32 &
    dta$pty == 49
] <- 1


# In NA-37, Sajid Hussain Turi won, not Doctor Syed Riaz Hussain.

dta$seat[
  dta$id == 925 &
    dta$cst == 37 &
    dta$can == "doctor syed riaz hussain"
] <- 0

dta$seat[
  dta$id == 925 &
    dta$cst == 37 &
    dta$can == "sajid hussain turi"
] <- 1


# In NA-64, PPPP won the seat, not the independent candidate.

dta$seat[
  dta$id == 925 &
    dta$cst == 64 &
    dta$pty %in% c(6357, 6358)
] <- 0

dta$seat[
  dta$id == 925 &
    dta$cst == 64 &
    dta$pty == 58
] <- 1


# In NA-259, PPPP won the seat, not PML.

dta$seat[
  dta$id == 925 &
    dta$cst == 259 &
    dta$pty == 49
] <- 0

dta$seat[
  dta$id == 925 &
    dta$cst == 259 &
    dta$pty == 58
] <- 1
