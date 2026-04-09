
# Uruguay (November, 1962)

# In CANELONES the Partido Unión Patriótica won a seat
# https://web.archive.org/web/20180226193029/http://www.corteelectoral.gub.uy/gxportal/gxpfiles/elecciones/eleccion%20Nacional%201962.htm

dta$seat[
  dta$id == 1338 &
    dta$cst == 2 &
    dta$pty == 39
] <- 1
