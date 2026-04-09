
# Mexico, (July 2018)

# Mexico's 200-seat "National Constituency" tier sits at cst == 301 here, but
# this is an upper tier so should be 900+.

dta$cst[
  dta$id == 2068 &
    dta$cst == 301
] <- 901
