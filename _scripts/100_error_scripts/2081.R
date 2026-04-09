
# Pakistan, (July 2018)

# Pakistan's women's constituencies and minorities tier sit at cst == 201-211 in
# this election, but these are upper-tier reserved seats so should be 900+.

dta$cst[
  dta$id == 2081 &
    dta$cst %in% 273:274
] <-
  match(
    dta$cst[dta$id == 2081 & dta$cst %in% 273:274],
    unique(dta$cst[dta$id == 2081 & dta$cst %in% 273:274])
  ) + 900
