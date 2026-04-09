
# New Zealand, (November 1954)

# It looks like the pty value in Marlborough was inadvertently replaced with the
# party vote counts.

dta$pty[
  dta$id == 830 &
    dta$pty_n == "national"
] <- 49

dta$pty[
  dta$id == 830 &
    dta$pty_n == "labour"
] <- 34

dta$pty[
  dta$id == 830 &
    dta$pty_n == "social credit"
] <- 77
