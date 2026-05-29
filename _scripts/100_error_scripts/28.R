
# Costa Rica  (February, 2006)

# Data from:
#
# https://www.tse.go.cr/juris/electorales/1137-E-2006.HTM

# The TSE declaratoria for San Jose gives PLN 7, PAC 5, ML 2, PUSC 2,
# PRN 1, PASE 1, FA 1, and UN 1 seats. UPC did not win a seat.

dta$seat[
  dta$id == 28 &
    dta$cst == 7 &
    dta$pty == 2
] <- 5

dta$seat[
  dta$id == 28 &
    dta$cst == 7 &
    dta$pty == 47
] <- 2

dta$seat[
  dta$id == 28 &
    dta$cst == 7 &
    dta$pty == 45
] <- 1

dta$seat[
  dta$id == 28 &
    dta$cst == 7 &
    dta$pty == 52
] <- 0
