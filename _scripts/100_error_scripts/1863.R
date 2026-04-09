
# Malaysia, (August 1986)

# The "National Front" is coded as both pty == 52 and 5001 in this election. I
# will use 5001.

dta$pty[
  dta$id == 1863 &
    dta$pty_n == "National Front"
] <- 52


# The label "Social Democratic Party" is coded as both pty == 52 and pty == 5001
# in this election. I will give it pty == 61.

dta$pty[
  dta$id == 1863 &
    dta$pty_n == "Social Democratic Party"
] <- 61
