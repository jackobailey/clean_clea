
# Singapore (September, 1988)

# In tiong bahru grc, the people's action party won all 3 seat
#
# https://en.wikipedia.org/wiki/1988_Singaporean_general_election#By_constituency

dta$seat[
  dta$id == 566 &
    dta$cst == 50 &
    dta$pty == 3
] <- 3
