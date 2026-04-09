# Ecuador (April, 1979)

# Data from:
#
# https://en.wikipedia.org/wiki/1978%E2%80%9379_Ecuadorian_general_election#List_of_elected_representatives
#
# In Galápagos, the Partido Izquierda Democratica won the seat, not the
# Partido Conservador Ecuatoriano.

dta$seat[
  dta$id == 1176 &
    dta$cst == 9 &
    dta$pty == 46
] <- 0

dta$seat[
  dta$id == 1176 &
    dta$cst == 9 &
    dta$pty == 48
] <- 1
