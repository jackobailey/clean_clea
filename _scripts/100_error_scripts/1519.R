
# UK, (May 2015)

# The "Communist Party Of Great Britain" is coded as both pty == 24 and 378
# in this election. These look to be the same party. I will use code 24.

dta$pty[
  dta$id == 1519 &
    dta$pty_n == "Communist Party Of Great Britain"
] <- 24

# The "Peace Party" is coded as both pty == 276 and 534. These also look to be
# the same parties. I will use code 276.

dta$pty[
  dta$id == 1519 &
    dta$pty_n == "Peace Party"
] <- 276


# The "Socialist Party Of Great Britain" is coded as both pty == 135 and 541.
# These look to be the same parties. I will use code 135.

dta$pty[
  dta$id == 1519 &
    dta$pty_n == "Socialist Party Of Great Britain"
] <- 135
