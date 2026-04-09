
# Germany (October, 1980)

# The district name is not consistent in Rottweil (cst == 189)

dta$cst_n[
  dta$id == 307 &
    dta$cst == 189
] <- "Rottweil"
