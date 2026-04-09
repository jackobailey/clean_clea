
# Uruguay (November, 1989)

# Data from:
# https://www.gub.uy/corte-electoral/sites/corte-electoral/files/2023-08/Eleccion_Nacional_1989.pdf

# In COLONIA, the district magnitude was 4

dta$mag[
  dta$id == 1342 &
    dta$cst == 4
] <- 4
