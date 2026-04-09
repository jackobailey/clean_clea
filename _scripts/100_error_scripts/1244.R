
# Liechtenstein (March, 2005)

# In Oberland, the following candidates did not win a seat:
#
# - Thomas Gstöhl
# - Henrik Caduff
# - Rony Bargetze
# - Claudia Heeb-Fleck
#
# https://en.wikipedia.org/wiki/2005_Liechtenstein_general_election#By_electoral_district

dta$seat[
  dta$id == 1244 &
    dta$cst == 1 &
    dta$can %in% c(
      "Thomas Gstöhl",
      "Henrik Caduff",
      "Rony Bargetze",
      "Claudia Heeb-Fleck"
    )
] <- 0


# In Unterland, the following candidates did not win a seat:
#
# - Adrian Gstöhl
# - Wolfgang Marxer
#
# https://en.wikipedia.org/wiki/2005_Liechtenstein_general_election#By_electoral_district

dta$seat[
  dta$id == 1244 &
    dta$cst == 2 &
    dta$can %in% c(
      "Adrian Gstöhl",
      "Wolfgang Marxer"
    )
] <- 0


# All -990 seat values are 0s

dta$seat[
  dta$id == 1244 &
    dta$seat == -990
] <- 0
