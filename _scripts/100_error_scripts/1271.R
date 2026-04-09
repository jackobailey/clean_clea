
# Rwanda (September, 2008)

# The district magnitude in RWANDA was 53, not missing (-990).
# https://www.parliament.gov.rw/chamber-of-deputies-2/about

dta$mag[
  dta$id == 1271 &
    dta$cst == 1
] <- 53


# As a nationwide list constituency, I will code this as 900+ for my own purposes

dta$cst[
  dta$id == 1271 &
    dta$cst == 1
] <- 901
