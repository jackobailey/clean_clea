
# Pakistan, (February 1985)

# Pakistan's women's constituencies and minorities tier sit at cst == 201-211 in
# this election, but these are upper-tier reserved seats so should be 900+.

dta$cst[
  dta$id == 2078 &
    dta$cst %in% 212:215
] <-
  match(
    dta$cst[dta$id == 2078 & dta$cst %in% 212:215],
    unique(dta$cst[dta$id == 2078 & dta$cst %in% 212:215])
  ) + 900
