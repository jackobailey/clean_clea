
# Colombia (March 2002)

# The label "partido indigena colombiano" is coded as both pty == 46 and 98 in
# this election. I will use 98.

dta$pty[
  dta$id == 158 &
    dta$pty_n == "partido indigena colombiano"
] <- 98
