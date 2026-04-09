# Costa Rica (February, 1982)

# Data from:
#
# https://www.tse.go.cr/consultasresueltas.html
# https://www.electionpassport.com/files/CR/CR.xlsx
#
# Best available source for the 1982 district seat allocation.

# Seats and district magnitudes are missing.


dta$mag[
  dta$id == 22 &
    dta$cst_n == "alajuela"
] <- 10

dta$seat[
  dta$id == 22 &
    dta$cst_n == "alajuela"
] <- 0

dta$seat[
  dta$id == 22 &
    dta$cst_n == "alajuela" &
    dta$pty_n == "liberación nacional"
] <- 6

dta$seat[
  dta$id == 22 &
    dta$cst_n == "alajuela" &
    dta$pty_n == "unidad coalición"
] <- 3

dta$seat[
  dta$id == 22 &
    dta$cst_n == "alajuela" &
    dta$pty_n == "accion democratica alajuelense"
] <- 1


# cartago

dta$mag[
  dta$id == 22 &
    dta$cst_n == "cartago"
] <- 6

dta$seat[
  dta$id == 22 &
    dta$cst_n == "cartago"
] <- 0

dta$seat[
  dta$id == 22 &
    dta$cst_n == "cartago" &
    dta$pty_n == "liberación nacional"
] <- 4

dta$seat[
  dta$id == 22 &
    dta$cst_n == "cartago" &
    dta$pty_n == "unidad coalición"
] <- 2


# guanacaste

dta$mag[
  dta$id == 22 &
    dta$cst_n == "guanacaste"
] <- 5

dta$seat[
  dta$id == 22 &
    dta$cst_n == "guanacaste"
] <- 0

dta$seat[
  dta$id == 22 &
    dta$cst_n == "guanacaste" &
    dta$pty_n == "liberación nacional"
] <- 3

dta$seat[
  dta$id == 22 &
    dta$cst_n == "guanacaste" &
    dta$pty_n == "unidad coalición"
] <- 2


# heredia

dta$mag[
  dta$id == 22 &
    dta$cst_n == "heredia"
] <- 5

dta$seat[
  dta$id == 22 &
    dta$cst_n == "heredia"
] <- 0

dta$seat[
  dta$id == 22 &
    dta$cst_n == "heredia" &
    dta$pty_n == "liberación nacional"
] <- 3

dta$seat[
  dta$id == 22 &
    dta$cst_n == "heredia" &
    dta$pty_n == "unidad coalición"
] <- 2


# limon

dta$mag[
  dta$id == 22 &
    dta$cst_n == "limon"
] <- 4

dta$seat[
  dta$id == 22 &
    dta$cst_n == "limon"
] <- 0

dta$seat[
  dta$id == 22 &
    dta$cst_n == "limon" &
    dta$pty_n == "liberación nacional"
] <- 2

dta$seat[
  dta$id == 22 &
    dta$cst_n == "limon" &
    dta$pty_n == "unidad coalición"
] <- 1

dta$seat[
  dta$id == 22 &
    dta$cst_n == "limon" &
    dta$pty_n == "pueblo unido (coalicion)"
] <- 1


# puntarenas

dta$mag[
  dta$id == 22 &
    dta$cst_n == "puntarenas"
] <- 6

dta$seat[
  dta$id == 22 &
    dta$cst_n == "puntarenas"
] <- 0

dta$seat[
  dta$id == 22 &
    dta$cst_n == "puntarenas" &
    dta$pty_n == "liberación nacional"
] <- 3

dta$seat[
  dta$id == 22 &
    dta$cst_n == "puntarenas" &
    dta$pty_n == "unidad coalición"
] <- 2

dta$seat[
  dta$id == 22 &
    dta$cst_n == "puntarenas" &
    dta$pty_n == "pueblo unido (coalicion)"
] <- 1


# san jose

dta$mag[
  dta$id == 22 &
    dta$cst_n == "san jose"
] <- 21

dta$seat[
  dta$id == 22 &
    dta$cst_n == "san jose"
] <- 0

dta$seat[
  dta$id == 22 &
    dta$cst_n == "san jose" &
    dta$pty_n == "liberación nacional"
] <- 12

dta$seat[
  dta$id == 22 &
    dta$cst_n == "san jose" &
    dta$pty_n == "unidad coalición"
] <- 6

dta$seat[
  dta$id == 22 &
    dta$cst_n == "san jose" &
    dta$pty_n == "pueblo unido (coalicion)"
] <- 2

dta$seat[
  dta$id == 22 &
    dta$cst_n == "san jose" &
    dta$pty_n == "movimiento nacional"
] <- 1
