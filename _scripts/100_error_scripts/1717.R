
# Ghana, (December 2016)

# Data from:
#
# http://psephos.adam-carr.net/countries/g/ghana/ghana2016leg1.txt
# https://en.wikipedia.org/wiki/List_of_MPs_elected_in_the_2016_Ghanaian_parliamentary_election

# The "Progressive People's Party" is coded as both pty == 7 and pty == 18 in
# this election. The correct code is 18.

dta$pty[
  dta$id == 1717 &
    dta$pty_n == "Progressive People's Party"
] <- 18


# In Chereponi, the National Democratic Congress won, not the New Patriotic
# Party.

dta$seat[
  dta$id == 1717 &
    dta$cst == 102 &
    dta$pty == 7
] <- 0

dta$seat[
  dta$id == 1717 &
    dta$cst == 102 &
    dta$pty == 5
] <- 1
