
# Antigua and Barbuda (February, 1976)

# The result for the Progressive Labour Movement candidate in St Mary's North is
# attributed to St. Mary's South by mistake.
#
# https://es.wikipedia.org/wiki/Elecciones_generales_de_Antigua_y_Barbuda_de_1976

dta$cst_n[
  dta$id == 1125 &
    dta$cst == 8
] <- "St. Mary's North"


# 'St. Philip North' is mistakenly spelt 'St. Phillip North' for the Antigua
# Labour Party (ALP) candidate

dta$cst_n[
  dta$id == 1125 &
    dta$cst == 14
] <- "St. Philip North"
