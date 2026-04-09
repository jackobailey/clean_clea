
# Sweden, (December 2022)

# The label "Feministiskt initiativ" is coded as both pty == 25 and pty == 50 in
# this election. Given the vote total is correct, it looks like the pty value
# should be 25 in this case.
#
# https://en.wikipedia.org/wiki/Kronoberg_County_(Riksdag_constituency)#2020s

dta$pty[
  dta$id == 2091 &
    dta$cst == 10 &
    dta$pty_n == "Feministiskt initiativ"
] <- 25


# The label "Klimatalliansen" is coded as both pty == 25 and pty == 28 in this
# election. Since pty == 25 is the Feministiskt initiativ code, I will use 28.

dta$pty[
  dta$id == 2091 &
    dta$pty_n == "Klimatalliansen"
] <- 28
