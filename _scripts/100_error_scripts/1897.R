
# Vanuatu (September, 2008)

# Data from:
#
# http://www.paclii.org/vu/elections/VU_Elec_Gov_Gaz_12Sep2008.pdf
# https://fr.wikipedia.org/wiki/Élections_législatives_vanuataises_de_2008

# The official Port Vila result has Cyriaque Melep on 76 votes. The raw row
# has 907, which wrongly places him above elected candidates.

dta$cv1[
  dta$id == 1897 &
    dta$cst == 12 &
    dta$can == "Cyriaque Melep" &
    dta$pty == 11
] <- 76

dta$pv1[
  dta$id == 1897 &
    dta$cst == 12 &
    dta$can == "Cyriaque Melep" &
    dta$pty == 11
] <- 76
