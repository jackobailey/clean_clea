
# Argentina, (October 1999)

# The label "de los trabajadores por el socialismo" is coded as both pty == 141
# and pty == 144 in this election. I will use pty == 141.

dta$pty[
  dta$id == 723 &
    dta$pty_n == "de los trabajadores por el socialismo"
] <- 141
