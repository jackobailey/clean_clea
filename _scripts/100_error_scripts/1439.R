
# Japan (October, 1996)

# Data from:
#
# https://en.wikipedia.org/wiki/Saitama_4th_district
# https://en.wikipedia.org/wiki/Tokyo_4th_district

# In cst == 223 (Saitama-4), the New Frontier Party won the seat

dta$seat[
  dta$id == 1439 &
    dta$cst == 223 &
    dta$pty == 3
] <- 0

dta$seat[
  dta$id == 1439 &
    dta$cst == 223 &
    dta$pty == 55
] <- 1


# In cst == 260 (Tokyo-4), a different independent won the seat

dta$seat[
  dta$id == 1439 &
    dta$cst == 260 &
    dta$pty == 6024
] <- 0

dta$seat[
  dta$id == 1439 &
    dta$cst == 260 &
    dta$pty == 6025
] <- 1
