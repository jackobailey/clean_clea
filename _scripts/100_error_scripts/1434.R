
# Iran, (March 2012)

# Data from:
#
# https://irandataportal.syr.edu/wp-content/uploads/zanjan-2.pdf

# In 186 constituencies, all seats are already allocated to winners, but 1573
# losing parties are still coded as seat == -990 and none are coded as 0. This
# looks like non-seat winners were coded as missing.

dta$seat[
  dta$id == 1434 &
    dta$seat == -990
] <- 0

# The district magnitude in cst == 201 (Zanjan, Taram) was 2, not 1.

dta$mag[
  dta$id == 1434 &
    dta$cst == 201
] <- 2
