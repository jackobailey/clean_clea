
# Nicaragua (November, 2011)

# Data from:
#
# https://en.wikipedia.org/wiki/2011_Nicaraguan_general_election
# https://www.electionpassport.com/electoral-systems/nicaragua/
# https://dialnet.unirioja.es/descarga/articulo/5075937.pdf

# The constituencies of "LEON" and "GRANADA" share a single cst value (6). I am
# going to give GRANADA a cst of 18.

dta$cst[
  dta$id == 1267 &
    dta$cst_n == "GRANADA"
] <- 18


# The national constituency had a magnitude of 20, not 2

dta$mag[
  dta$id == 1267 &
    dta$cst == 901
] <- 20


# In Chinandega, the Partido Liberal Independiente won the seat, not the
# Partido Liberal Constitucionalista.

dta$seat[
  dta$id == 1267 &
    dta$cst == 3 &
    dta$pty == 18
] <- 0

dta$seat[
  dta$id == 1267 &
    dta$cst == 3 &
    dta$pty == 19
] <- 1


# In Granada, the Partido Liberal Independiente won the seat, not the Partido
# Liberal Constitucionalista.

dta$seat[
  dta$id == 1267 &
    dta$cst == 18 &
    dta$pty == 18
] <- 0

dta$seat[
  dta$id == 1267 &
    dta$cst == 18 &
    dta$pty == 19
] <- 1

