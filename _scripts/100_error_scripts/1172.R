
# Colombia (March, 2010)

# Data from:
#
# https://es.wikipedia.org/wiki/Elecciones_legislativas_de_Colombia_de_2010#Resultados_Generales_por_Departamentos

# In Caqueta, Partido Liberal Colombiano and Partido Social De Unidad Nacional
# won one seat each

dta$seat[
  dta$id == 1172 &
    dta$cst == 8 &
    dta$pty == 99
] <- 1

dta$seat[
  dta$id == 1172 &
    dta$cst == 8 &
    dta$pty == 102
] <- 1


# In Narino, Partido Social De Unidad Nacional, Partido Liberal Colombiano, and
# Partido De Integración Nacional won 1 seat, not 2

dta$seat[
  dta$id == 1172 &
    dta$cst == 22 &
    dta$pty == 102
] <- 1

dta$seat[
  dta$id == 1172 &
    dta$cst == 22 &
    dta$pty == 99
] <- 1

dta$seat[
  dta$id == 1172 &
    dta$cst == 22 &
    dta$pty == 119
] <- 1


# In Valle, Partido De Integración Nacional won 2 seats, not 1

dta$seat[
  dta$id == 1172 &
    dta$cst == 31 &
    dta$pty == 95
] <- 2
