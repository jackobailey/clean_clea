
# Pakistan (February 2008)

# Pakistan's reserved seats for women and non-Muslims sit at cst == 273-277 in
# this election, but these are upper-tier seats and should be 900+.

dta$cst[
  dta$id == 1817 &
    dta$cst %in% c(273, 274, 275, 276, 277)
] <-
  match(
    dta$cst[dta$id == 1817 & dta$cst %in% c(273, 274, 275, 276, 277)],
    unique(dta$cst[dta$id == 1817 & dta$cst %in% c(273, 274, 275, 276, 277)])
  ) + 900
