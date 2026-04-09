
# Belgium (February 1946)

# In liège-luik, the socialists won 6 seats, not 1
#
# https://fr.wikipedia.org/wiki/Élections_législatives_belges_de_1946

dta$seat[
  dta$id == 131 &
    dta$cst == 14 &
    dta$pty == 20
] <- 6
