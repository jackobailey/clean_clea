
# Iraq (March, 2010)

# Data from:
# https://en.wikipedia.org/wiki/2010_Iraqi_parliamentary_election

# In Ninewah, others didn't win 3 seats

dta$seat[
  dta$id == 1213 &
    dta$cst == 13 &
    dta$pty_n == "Others"
] <- 0


# In Dahuk, the Chaldean People's Assembly Syriac Assyrian didn't win a seat
# and the magnitude was 10

dta$seat[
  dta$id == 1213 &
    dta$cst == 5 &
    dta$pty_n == "Chaldean People's Assembly Syriac Assyrian"
] <- 0

dta$mag[
  dta$id == 1213 &
    dta$cst == 5
] <- 10
