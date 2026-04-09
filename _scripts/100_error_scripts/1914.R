
# British Virgin Islands (February 2019)

# The Territorial Electoral District (cst == 10) is an at large seat so I will
# code it as having a cst of 900+

dta$cst[
  dta$id == 1914 &
    dta$cst == 10
] <- 901
