
# Dominican Republic (May, 2002)

# Data come from:
# https://resultadoselectorales.jce.gob.do/boletines/2002/nivel2002.htm

# For some reason, seats are recorded as -990 where they should be zero

dta$seat[
  dta$id == 38 &
    dta$seat == -990
] <- 0


# In santo domingo 3, only four seats are listed as being attributed to a party.
# It's hard to tell which party received the fifth seat, but reimplementing the
# allocation using D'Hondt (as the documentation suggests) implies that the
# "partido reformista social cristiano" should have received 2 seats, not 1.
#
# https://resultadoselectorales.jce.gob.do/boletines/2002/jce/Result/web/A011.html
#
# electoral::seats_ha(
#   parties = peek(38, 43)$pty_n,
#   votes = peek(38, 43)$pv1,
#   n_seats = 5,
#   method = "dhondt"
# )

dta$seat[
  dta$id == 38 &
    dta$cst == 43 &
    dta$pty == 53
] <- 2
