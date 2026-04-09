
# Singapore (August, 1991)

# In marine parade grc, the people's action party won all 4 seats
#
# https://en.wikipedia.org/wiki/1991_Singaporean_general_election#By_constituency

dta$seat[
  dta$id == 567 &
    dta$cst == 24 &
    dta$pty == 3
] <- 4
