# Singapore (September, 1963)

# Data from:
#
# https://en.wikipedia.org/wiki/1963_Singaporean_general_election#By_constituency

# In Aljunied, the People's Action Party won.

dta$seat[
  dta$id == 560 &
    dta$cst == 1 &
    dta$pty == 8
] <- 0

dta$seat[
  dta$id == 560 &
    dta$cst == 1 &
    dta$pty == 3
] <- 1


# In Anson, the People's Action Party won.

dta$seat[
  dta$id == 560 &
    dta$cst == 2 &
    dta$pty == 8
] <- 0

dta$seat[
  dta$id == 560 &
    dta$cst == 2 &
    dta$pty == 3
] <- 1
