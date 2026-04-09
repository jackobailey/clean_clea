
# Belgium (May 1904)

# Data from:
#
# https://resultatselection.belgium.be/fr/election-results/chambre-des-représentants/1904/arrondissement/164341

# In cst == 15 (verviers), the district magnitude was 5

dta$mag[
  dta$id == 118 &
    dta$cst == 15
] <- 5
