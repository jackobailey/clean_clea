# Turkey (June, 2011)

# Data from:
#
# https://www.ysk.gov.tr/
# https://www.yenisafak.com/en/secim-1983/bingol-ili-milletvekili-dagilimi
# https://www.yenisafak.com/en/secim-2011/sirnak-ili-secim-sonuclari
#
# Best available public sources for the specific district fixes and the grouped-independent drops.

# In Sirnak, the magnitude was 4, not 5, and the seat allocation needs correction.

dta$mag[
  dta$id == 1518 &
    dta$cst == 71
] <- 4

dta$seat[
  dta$id == 1518 &
    dta$cst == 71 &
    dta$pty == 6000
] <- 3

dta$seat[
  dta$id == 1518 &
    dta$cst == 71 &
    dta$pty == 16
] <- 1

dta$seat[
  dta$id == 1518 &
    dta$cst == 71 &
    dta$pty == 40
] <- 0
