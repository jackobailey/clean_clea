
# Bulgaria, (October 2022)

# The label "Bulgarian Rise" is coded as both pty == 182 and pty == 202. I will
# use 202 as it appears the most common.

dta$pty[
  dta$id == 2042 &
    dta$pty_n == "Bulgarian Rise"
] <- 202
