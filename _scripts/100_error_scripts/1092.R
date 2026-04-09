
# UK (February, 1950)

# Ross and Cromarty cst == 519 should be with cst == 291
# https://en.wikipedia.org/wiki/Ross_and_Cromarty_(UK_Parliament_constituency)#Elections_in_the_1950s

dta$cst[
  dta$id == 1092 &
    dta$cst == 519
] <- 291
