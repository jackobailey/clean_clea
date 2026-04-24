
# Belgium (May 1929)

# Data from:
#
# https://resultatselection.belgium.be/fr/election-results/chambre-des-représentants/1929/arrondissement/163185

# In cst == 20 (nivelles), the parti libéral (pty == 14) won a seat

dta$seat[
  dta$id == 127 &
    dta$cst == 20 &
    dta$pty == 14
] <- 1
