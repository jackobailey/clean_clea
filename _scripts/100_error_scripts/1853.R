
# Hungary (April, 2018)

# The "National Constituency Nationality Lists" have a unique name, but are part
# of the "National Constituency", so I will rename them for my purposes.

dta$cst_n[
  dta$id == 1853 &
    dta$cst == 63
] <- "National Constituency"


# The code for the national constituency should also be 900+ to be consistent
# with the codebook

dta$cst[
  dta$id == 1853 &
    dta$cst == 63
] <- 901
