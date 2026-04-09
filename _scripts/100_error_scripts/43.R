# Ghana (December, 2000)

# Data from:
#
# https://en.wikipedia.org/wiki/List_of_MPs_elected_in_the_2000_Ghanaian_parliamentary_election

# In Techiman North, the National Democratic Congress won the seat, not the
# New Patriotic Party.

dta$seat[
  dta$id == 43 &
    dta$cst == 182 &
    dta$pty == 5
] <- 1

dta$seat[
  dta$id == 43 &
    dta$cst == 182 &
    dta$pty == 7
] <- 0
