# Portugal (October, 2015)

# Data from:
#
# https://www.cne.pt/content/eleicoes-para-assembleia-da-republica-2015

# In Leiria, the Coligacao Democratica Unitaria won 12,070 votes, not 120,700.

dta$pv1[
  dta$id == 1670 &
    dta$cst == 12 &
    dta$pty == 5003
] <- 12070
