# Indonesia (June, 1999)

# Data from:
#
# No external source found; this correction preserves the existing Bali seat
# and magnitude adjustment from the country-level script.

# In Bali, Partai Kebangkitan Bangsa did not win a seat.

dta$seat[
  dta$id == 1431 &
    dta$cst == 2 &
    dta$pty == 24
] <- 0

dta$mag[
  dta$id == 1431 &
    dta$cst == 2
] <- 8
