
# Uruguay (October, 1999)

# Data from:
# https://www.gub.uy/corte-electoral/sites/corte-electoral/files/2023-08/elecciones_nacionales_1999.pdf

# In MALDONADO, Encuentro Progresista-Frente Amplio won 2 seats, Partido
# Colorado won 1, and Partido Nacional won 1

dta$seat[
  dta$id == 1344 &
    dta$cst == 9 &
    dta$pty == 5001
] <- 2

dta$seat[
  dta$id == 1344 &
    dta$cst == 9 &
    dta$pty == 7
] <- 1

dta$seat[
  dta$id == 1344 &
    dta$cst == 9 &
    dta$pty == 27
] <- 1


# In COLONIA, Encuentro Progresista-Frente Amplio won 1 seat

dta$seat[
  dta$id == 1344 &
    dta$cst == 4 &
    dta$pty == 5001
] <- 2
