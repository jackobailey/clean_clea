# Niger (February, 2016)

# Data from:
#
# https://web.archive.org/web/20161023110854/http://www.cour-constitutionnelle-niger.org/documents/arrets/matiere_electorale/2016/arret_n_12_16_cc_me.pdf

# In the Bani-Bangou Minority seat, Mouvement National de la Societe de
# Developpement-Nassara won the seat.

dta$seat[
  dta$id == 1790 &
    dta$cst == 9 &
    dta$pty == 16
] <- 0

dta$seat[
  dta$id == 1790 &
    dta$cst == 9 &
    dta$pty == 10
] <- 1
