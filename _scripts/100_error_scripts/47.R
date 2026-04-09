
# Hungary (March 1990)

# The label "magyar szocialista párt" is coded as both pty == 34 and pty == 35 in this
# election. I will us 35.

dta$pty[
  dta$id == 47 &
    dta$pty_n == "magyar szocialista párt"
] <- 35
