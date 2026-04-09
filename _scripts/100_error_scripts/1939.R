
# Guatemala, (July 2019)

# Guatemala's "National District" is cst == 13, but should be 900+ according to
# the codebook.

dta$cst[
  dta$id == 1939 &
    dta$cst == 13
] <- 901
