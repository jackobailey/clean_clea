
# San Marino (June, 2006)

# The district magnitude in san marino was 60, not missing (-990).
# https://data.ipu.org/election-summary/HTML/2273_06.htm

dta$mag[
  dta$id == 1002 &
    dta$cst == 1
] <- 60


# As a single nationwide constituency, I will code this as 900+ for my own
# purposes

dta$cst[
  dta$id == 1002 &
    dta$cst == 1
] <- 901
