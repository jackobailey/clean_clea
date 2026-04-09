
# Marshall Islands (November, 2007)

# In KWAJALEIN, TONY A. deBRUM won a seat
# https://en.wikipedia.org/wiki/2007_Marshallese_general_election#By_constituency

dta$seat[
  dta$id == 1253 &
    dta$cst == 10 &
    dta$can == "TONY A. deBRUM"
] <- 1
