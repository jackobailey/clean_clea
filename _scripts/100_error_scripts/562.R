
# Singapore (September, 1972)

# Data from:
#
# https://en.wikipedia.org/wiki/Alexandra_Constituency#Elections_in_the_1970s
# https://www.eld.gov.sg/elections_past_parliamentary1972.html

# In cst == 1 (alexandra), the people's action party won the seat

dta$seat[
  dta$id == 562 &
    dta$cst == 1 &
    dta$pty == 6
] <- 0

dta$seat[
  dta$id == 562 &
    dta$cst == 1 &
    dta$pty == 3
] <- 1
