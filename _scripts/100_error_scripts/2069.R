
# Morocco, (October 2016)

# Morocco's "National Constituency" is cst == 52, but should be 900+ to conform
# with the codebook.

dta$cst[
  dta$id == 2069 &
    dta$cst == 52
] <- 901
