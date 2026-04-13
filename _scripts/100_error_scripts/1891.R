
# Vanuatu (November 1987)

# Data from:
#
# https://web.archive.org/web/20220531041113/http://www.paclii.org/vu/other/VUGovGaz/1987/40.pdf

# In cst == 7 (Maewo), the Vanuaaku Party won the seat

dta$seat[
  dta$id == 1891 &
    dta$cst == 7 &
    dta$pty == 6003
] <- 0

dta$seat[
  dta$id == 1891 &
    dta$cst == 7 &
    dta$pty == 23
] <- 1
