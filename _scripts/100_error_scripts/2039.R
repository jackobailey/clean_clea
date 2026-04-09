
# Bulgaria (April, 2021)

# Data from:
#
# https://results.cik.bg/pi2021/rezultati/24.html
# https://results.cik.bg/pi2021/rezultati/25.html
#
# Sofia 24 has a district magnitude of 12 and Sofia 25 of 14

dta$mag[
  dta$id == 2039 &
    dta$cst == 22
] <- 12

dta$mag[
  dta$id == 2039 &
    dta$cst == 23
] <- 14
