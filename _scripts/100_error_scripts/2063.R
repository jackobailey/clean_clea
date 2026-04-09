
# Macau, (September 2013)

# The label "Associação de Macau Novo" is coded as both pty == 33 and pty == 44
# in this election. This is because the party ran under different lists. I will
# use pty == 33 in this case.

dta$pty[
  dta$id == 2063 &
    dta$pty_n == "Associação de Macau Novo"
] <- 33


# As a single territory-wide constituency, I will code this as 900+ for my
# own purposes

dta$cst[
  dta$id == 2063 &
    dta$cst == 1
] <- 901
