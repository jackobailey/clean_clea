
# Vanuatu (May 2002)

# Data from:
#
# https://web.archive.org/web/20251207174359/http://www.paclii.org/vu/other/VUGovGaz/2002/33.pdf

# In cst == 7 (Luganville), the district magnitude was 2 and the independent did
# not win a seat

dta$mag[
  dta$id == 1895 &
    dta$cst == 7
] <- 2

dta$seat[
  dta$id == 1895 &
    dta$cst == 7 &
    dta$pty == 6020
] <- 0
