# Malawi (June, 1999)

# Data from:
#
# https://mec.org.mw/wp-content/uploads/2018/11/PPE-RESULTS-1999.pdf

# In Chitipa East (cst == 191) and Kasungu North (cst == 53), the Malawi
# Congress Party won the seat.

dta$seat[
  dta$id == 481 &
    dta$cst == 191 &
    dta$pty == 1
] <- 0

dta$seat[
  dta$id == 481 &
    dta$cst == 191 &
    dta$pty == 3
] <- 1

dta$seat[
  dta$id == 481 &
    dta$cst == 53 &
    dta$pty == 1
] <- 0

dta$seat[
  dta$id == 481 &
    dta$cst == 53 &
    dta$pty == 3
] <- 1
