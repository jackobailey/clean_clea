
# Belgium (May 1906)

# Data from:
#
# https://resultatselection.belgium.be/fr/election-results/chambre-des-représentants/1906/arrondissement/164407
# https://www.lachambre.be/FLWB/pdf/digidoc/DPS/K3035/K30351218/K30351218.pdf

# Although the official website suggests that cst == 5 (courtrai) had a district
# magnitude of 3, the seat distribution given would be impossible under D'Hondt.
# Instead, the document above suggests that the district actually had a district
# magnitude of 5 and that the liberals won 2 seats.

dta$mag[
  dta$id == 119 &
    dta$cst == 5
] <- 5

dta$seat[
  dta$id == 119 &
    dta$cst == 5 &
    dta$pty == 5001
] <- 2
