
# Hungary (May, 1998)

# The district magnitude in szabolcs-szatmár-bereg was 9, not missing (-990).
# https://static.valasztas.hu/v98din2/l12116.htm

dta$mag[
  dta$id == 975 &
    dta$cst == 916
] <- 9
