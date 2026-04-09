
# Japan (October, 2017)

# Data from:
#
# https://en.wikipedia.org/wiki/Fukuoka_1st_district

# In cst == 42 (Fukuoka 1), the Constitutional Democratic Party won the seat

dta$seat[
  dta$id == 1946 &
    dta$cst == 42 &
    dta$pty == 3
] <- 0

dta$seat[
  dta$id == 1946 &
    dta$cst == 42 &
    dta$pty == 73
] <- 1
