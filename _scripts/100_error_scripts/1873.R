
# South Africa, (May 2019)

# South Africa's 200-seat "National Constituency" is cst == 7 but is a
# compensatory upper tier, so should be 900+. I use 901.

dta$cst[
  dta$id == 1873 &
    dta$cst == 7
] <- 901
