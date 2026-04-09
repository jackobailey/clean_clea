
# Mexico, (June 2015)

# Mexico's 200-seat "National Constituency" tier sits at cst == 183 here, but
# this is an upper tier so should be 900+.

dta$cst[
  dta$id == 2067 &
    dta$cst == 183
] <- 901
