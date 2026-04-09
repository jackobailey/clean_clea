# Czechia (October, 2017)

# Data from:
#
# https://www.volby.cz/pls/ps2017/ps?xjazyk=CZ
# https://www.volby.cz/pls/ps2017/vysledky_kraj?nuts=CZ0643&xjazyk=CZ
#
# In Jihomoravský, Svoboda a přímá demokracie won 3 seats. In particular, Jan
# Hrnčíř won a seat.

dta$seat[
  dta$id == 1782 &
    dta$cst == 3 &
    dta$can == "Jan Hrncir PhDr. Ing. Mgr. MBA, LL.M."
] <- 1
