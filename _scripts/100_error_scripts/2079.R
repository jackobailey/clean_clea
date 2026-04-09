
# Pakistan, (February 1997)

# The label "Pashtunkhwa Milli Awami Party" is coded as both pty == 192 and 220
# in this election. I will use 192.

dta$pty[
  dta$id == 2079 &
    dta$pty_n == "Pashtunkhwa Milli Awami Party"
] <- 192
