
# Panama (May, 1994)

# Some rows in "Circuito 5.2" receive cst == 16 instead of cst == 17

dta$cst[
  dta$id == 1982 &
    dta$cst_n == "Circuito 5.2"
] <- 17

# Some rows in "Circuito 10.2" receive cst == 39 instead of cst == 40

dta$cst[
  dta$id == 1982 &
    dta$cst_n == "Circuito 10.2"
] <- 40
