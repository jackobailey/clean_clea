
# Burundi, (May 2020)

# Data from:
#
# https://amategeko.gov.bi/wp-content/uploads/2020/06/BOB_No6-2020.pdf

# In Bujumbura (cst == 2), the Congrès national pour la liberté (pty == 2) won
# 2 seats, not the Union pour le Progrès national (pty == 11).

dta$seat[
  dta$id == 1917 &
    dta$cst == 2 &
    dta$pty == 11
] <- 0

dta$seat[
  dta$id == 1917 &
    dta$cst == 2 &
    dta$pty == 2
] <- 2
