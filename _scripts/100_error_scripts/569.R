
# Singapore (November, 2001)

# In al junied, the people's action party won 5 seats
#
# https://en.wikipedia.org/wiki/2001_Singaporean_general_election#By_constituency

dta$seat[
  dta$id == 569 &
    dta$cst == 1 &
    dta$pty == 3
] <- 5
