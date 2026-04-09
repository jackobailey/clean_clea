
# Germany (September, 2009)

# Data from:
#
# https://en.wikipedia.org/wiki/Fulda_(electoral_district)
# https://en.wikipedia.org/wiki/Rheinisch-Bergischer_Kreis_(electoral_district)
# https://en.wikipedia.org/wiki/Steinfurt_I_%E2%80%93_Borken_I

# In cst == 94 (fulda), Michael Brand (CDU) won the seat

dta$seat[
  dta$id == 1041 &
    dta$cst == 94 &
    dta$can == "Claudia Blum"
] <- 0

dta$seat[
  dta$id == 1041 &
    dta$cst == 94 &
    dta$can == "Michael Brand"
] <- 1


# In cst == 235 (rheinisch-bergischer kreis), Wolfgang Bosbach (CDU) won

dta$seat[
  dta$id == 1041 &
    dta$cst == 235 &
    dta$can == "Christian Lindner"
] <- 0

dta$seat[
  dta$id == 1041 &
    dta$cst == 235 &
    dta$can == "Wolfgang Bosbach"
] <- 1


# In cst == 235 (rheinisch-bergischer kreis), Jens Spahn (CDU) won

dta$seat[
  dta$id == 1041 &
    dta$cst == 267 &
    dta$can == "Ingrid Arndt-Brauer"
] <- 0

dta$seat[
  dta$id == 1041 &
    dta$cst == 267 &
    dta$can == "Jens Spahn"
] <- 1
