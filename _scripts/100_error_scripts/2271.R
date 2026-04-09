
# Lebanon (August, 2000)

# Data from:
#
# https://www.clhrf.com/document/2000elecresults.htm

# Beirut First District had 6 seats in the 2000 results list.

dta$mag[
  dta$id == 2271 &
    dta$cst == 1
] <- 6

dta$seat[
  dta$id == 2271 &
    dta$cst == 1 &
    dta$can == "Majdalani Atef"
] <- 1


# Beirut Second District had 6 seats in the 2000 results list.

dta$mag[
  dta$id == 2271 &
    dta$cst == 2
] <- 6


# Mount Lebanon First District had 8 seats; Ziadeh Camile is the extra winner
# row.

dta$seat[
  dta$id == 2271 &
    dta$cst == 7 &
    dta$can == "Ziadeh Camile"
] <- 0


# Mount Lebanon Third District had 11 seats; Abdel Khalek Mahmoud is the extra
# winner row.

dta$seat[
  dta$id == 2271 &
    dta$cst == 10 &
    dta$can == "Abdel Khalek Mahmoud"
] <- 0


# North Lebanon Second District had 17 seats; restore the missing winner row.

dta$seat[
  dta$id == 2271 &
    dta$cst == 12 &
    dta$can == "Akel Sayed"
] <- 1
