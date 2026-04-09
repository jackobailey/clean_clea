# Cambodia (July, 2003)

# Data from:
#
# https://en.wikipedia.org/wiki/3rd_National_Assembly_of_Cambodia

# In Kampong Thom, FUNCINPEC won 1 seat and the district magnitude was 6, not
# 5.

dta$seat[
  dta$id == 1375 &
    dta$cst == 6 &
    dta$pty == 2
] <- 1

dta$mag[
  dta$id == 1375 &
    dta$cst == 6
] <- 6
