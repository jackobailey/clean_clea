
# Mexico, (June 2021)

# Mexico's 200-seat "National PR" tier sits at cst == 301 here, but this upper
# tier is still coded below 900 contrary to the codebook.

dta$cst[
  dta$id == 2278 &
    dta$cst == 301
] <- 901
