# Malawi (May, 2009)

# https://sdnp.org.mw/election/elections2009/index.php?district=Mulanje

# In Mulanje South East (cst == 117), the Democratic Progressive Party won the
# seat.

dta$seat[
  dta$id == 1732 &
    dta$cst == 117 &
    dta$pty == 6236
] <- 0

dta$seat[
  dta$id == 1732 &
    dta$cst == 117 &
    dta$pty == 24
] <- 1


# In Mzimba North, the Democratic Progressive Party won the seat, not the
# United Democratic Front

dta$seat[
  dta$id == 1732 &
    dta$cst == 126 &
    dta$pty == 21
] <- 0

dta$seat[
  dta$id == 1732 &
    dta$cst == 126 &
    dta$pty == 24
] <- 1


# In Mzimba East, the Democratic Progressive Party won the seat, not the
# Alliance for Democracy

dta$seat[
  dta$id == 1732 &
    dta$cst == 123 &
    dta$pty == 1
] <- 0

dta$seat[
  dta$id == 1732 &
    dta$cst == 123 &
    dta$pty == 24
] <- 1
