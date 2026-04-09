
# San Marino (June, 2001)

# The district magnitude in san marino was 60, not missing (-990).
# https://data.ipu.org/election-summary/HTML/2273_01.htm

dta$mag[
  dta$id == 1001 &
    dta$cst == 1
] <- 60
