
# Burkina Faso, (November 2020)

# Burkina Faso's "National Constituency" at cst == 27 is an upper-tier national
# list, but it is still coded below 900.

dta$cst[
  dta$id == 1916 &
    dta$cst == 27
] <- 901
