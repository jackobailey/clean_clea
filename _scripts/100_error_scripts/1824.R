# South Africa (August, 1984)

# Data from:
#
# https://journals.co.za/doi/pdf/10.10520/AJA0259188X_1329

# In House of Delegates - Camperdown, Solidarity won the seat.

dta$seat[
  dta$id == 1824 &
    dta$cst == 6 &
    dta$pty == 80
] <- 0

dta$seat[
  dta$id == 1824 &
    dta$cst == 6 &
    dta$pty == 82
] <- 1


# In House of Delegates - Marianhill, the National People's Party won the seat.

dta$seat[
  dta$id == 1824 &
    dta$cst == 21 &
    dta$pty == 82
] <- 0

dta$seat[
  dta$id == 1824 &
    dta$cst == 21 &
    dta$pty == 80
] <- 1
