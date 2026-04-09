
# Turkey (October, 1987)

# Data from:
# https://www.yenisafak.com/en/secim-1987/erzincan-ili-secim-sonuclari

# In ERZINCAN, social democratic populist party won 1 seat

dta$seat[
  dta$id == 1512 &
    dta$cst == 24 &
    dta$pty == 43
] <- 1
