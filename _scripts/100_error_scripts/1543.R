
# Ecuador, (February 2013)

# The label "Alianza Partido Avanza Partido Socialista Frente Amplio" is coded
# as both pty == 5075 and pty == 5076 in this election. 5076 is more common, so
# I'll use that.

dta$pty[
  dta$id == 1543 &
    dta$pty_n == "Alianza Partido Avanza Partido Socialista Frente Amplio"
] <- 5076
