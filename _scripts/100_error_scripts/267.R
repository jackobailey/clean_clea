
# Finland, (March 2003)

# Parties that did not win a seat are coded as -990 instead of 0

dta$seat[
  dta$id == 267 &
    dta$seat == -990
] <- 0
