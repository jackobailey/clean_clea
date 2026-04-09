
# Macau, (September 2017)

# The label "Associação de Macau Novo" is coded as both pty == 33 and pty == 52
# in this election. This is because the party ran under different lists. I will
# use pty == 33 in this case.

dta$pty[
  dta$id == 2064 &
    dta$pty_n == "Associação de Macau Novo"
] <- 33


# The label "Associação dos Cidadãos Unidos de Macau" is coded as pty == 20,
# and pty == 49, and pty == 58 in this election. This is because the party ran
# under different lists. I will use pty == 20 in this case.

dta$pty[
  dta$id == 2064 &
    dta$pty_n == "Associação dos Cidadãos Unidos de Macau"
] <- 20


# As a single territory-wide constituency, I will code this as 900+ for my
# own purposes

dta$cst[
  dta$id == 2064 &
    dta$cst == 1
] <- 901
