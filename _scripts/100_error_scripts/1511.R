
# Turkey (November, 1983)

# Data from:
#
# https://www.yenisafak.com/en/secim-1983/bingol-ili-milletvekili-dagilimi

# In Bingol, the magnitude was 2, not 3

dta$mag[
  dta$id == 1511 &
    dta$cst == 12
] <- 2
