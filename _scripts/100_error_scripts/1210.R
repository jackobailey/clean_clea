
# Guatemala (September, 2007)

# https://web.archive.org/web/20201119105523/https://www.tse.org.gt/Memoria%20Electoral%202007.pdf
#
# - In Distrito Central, Grand National Alliance won 2 seats
# - In Huehuetenango, Grand National Alliance won 2 seats
# - In Quetzaltenango, Grand National Alliance won 2 seats
# - In Quiché, Grand National Alliance won 2 seats
# - In San Marcos, Grand National Alliance won 3 seats
# - In El Progreso, Grand National Alliance won 1 seat

dta$seat[
  dta$id == 1210 &
    dta$cst == 5 &
    dta$pty == 15
] <- 2

dta$seat[
  dta$id == 1210 &
    dta$cst == 9 &
    dta$pty == 15
] <- 2

dta$seat[
  dta$id == 1210 &
    dta$cst == 14 &
    dta$pty == 15
] <- 2

dta$seat[
  dta$id == 1210 &
    dta$cst == 15 &
    dta$pty == 15
] <- 2

dta$seat[
  dta$id == 1210 &
    dta$cst == 18 &
    dta$pty == 15
] <- 3

dta$seat[
  dta$id == 1210 &
    dta$cst == 6 &
    dta$pty == 15
] <- 1
