
# Uruguay (November, 1954)

# The Partido Colorado won 2 seats, not 1
# https://www.gub.uy/corte-electoral/sites/corte-electoral/files/2023-08/Elecciones%C2%A0Nacionales%C2%A0de%C2%A01954.-.pdf

dta$seat[
  dta$id == 1336 &
    dta$cst == 7 &
    dta$pty == 7
] <- 2

peek(1336, 7)
