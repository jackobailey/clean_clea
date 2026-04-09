
# San Marino (November, 2008)

# The district magnitude in san marino was 60, not missing (-990).
# https://data.ipu.org/election-summary/HTML/2273_08.htm

dta$mag[
  dta$id == 1003 &
    dta$cst == 1
] <- 60


# As a single nationwide constituency, I will code this as 900+ for my own
# purposes

dta$cst[
  dta$id == 1003 &
    dta$cst == 1
] <- 901
