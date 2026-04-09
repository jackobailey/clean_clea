
# Guyana (August, 1957)

# Data from:
#
# https://web.archive.org/web/20150622024926/http://www.gecom.org.gy/pdf/elections%20results%201957.pdf

# In Georgetown Central, the People's National Congress won the seat.

dta$seat[
  dta$id == 911 &
    dta$cst == 8 &
    dta$pty == 17
] <- 0

dta$seat[
  dta$id == 911 &
    dta$cst == 8 &
    dta$pty == 13
] <- 1


# In Georgetown North, the People's National Congress won the seat.

dta$seat[
  dta$id == 911 &
    dta$cst == 9 &
    dta$pty == 17
] <- 0

dta$seat[
  dta$id == 911 &
    dta$cst == 9 &
    dta$pty == 13
] <- 1


# In Georgetown South, the People's National Congress won the seat.

dta$seat[
  dta$id == 911 &
    dta$cst == 10 &
    dta$pty == 17
] <- 0

dta$seat[
  dta$id == 911 &
    dta$cst == 10 &
    dta$pty == 13
] <- 1
