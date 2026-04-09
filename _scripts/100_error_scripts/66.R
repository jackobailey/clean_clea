
# Austria (November, 1930)

# Data from:
#
# https://link.springer.com/chapter/10.1007/978-1-349-65508-3_5
# https://www.bmi.gv.at/412/Nationalratswahlen/files/NRW_1930.pdf

# In viertel unterm manhartsberg, the district magnitude was 8 (see row 11 in
# tabelle 43)

dta$mag[
  dta$id == 66 &
    dta$cst == 16
] <- 8


# In wien nordwest, the district magnitude was 5 (see row 3 in tabelle 43)

dta$mag[
  dta$id == 66 &
    dta$cst == 22
] <- 5
