
# Belgium (May 1932)

# Data from:
#
# https://resultatselection.belgium.be/fr/election-results/chambre-des-représentants/1904/arrondissement/164341

# In cst == 10 (furnes-dixmude-ostende/veurne-dik), the parti ouvrier won 1 seat

dta$seat[
  dta$id == 128 &
    dta$cst == 10 &
    dta$pty == 15
] <- 1


# "anvers-antwerpen" should always be cst == 2

dta$cst[
  dta$id == 128 &
    dta$cst_n == "anvers-antwerpen"
] <- 2
