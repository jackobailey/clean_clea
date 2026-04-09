
# Bulgaria, (April 2023)

# The "Bulgarian National Union - ND" is coded as both pty == 105 and 197. I
# will use 105, which appears to be correct.

dta$pty[
  dta$id == 2043 &
    dta$pty_n == "Bulgarian National Union - ND"
] <- 105


# The "Bulgarian Path Socialist Party" is coded as both pty == 198 and 207. I
# will use 207, which appears to be correct.

dta$pty[
  dta$id == 2043 &
    dta$pty_n == "Bulgarian Path Socialist Party"
] <- 207
