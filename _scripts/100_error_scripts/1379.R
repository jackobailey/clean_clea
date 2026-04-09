# Cabo Verde (January, 2006)

# Data from:
#
# https://boe.incv.cv/Bulletins/Download/400

# In São Vicente, UCID won 2 seats.
# In São Nicolau, PAICV won 1 seat.

dta$seat[
  dta$id == 1379 &
    dta$cst == 19 &
    dta$pty == 7
] <- 2

dta$seat[
  dta$id == 1379 &
    dta$cst == 18 &
    dta$pty == 3
] <- 1
