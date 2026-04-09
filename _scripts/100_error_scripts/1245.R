
# Liechtenstein (February, 2009)

# In Oberland, the following candidates did not win a seat:
#
# - Marion Kindle
# - Leander Schädler
# - Helmuth Büchel
# - Stefan Wenaweser
# - Helen Konzett Bargetze
#
# https://en.wikipedia.org/wiki/2009_Liechtenstein_general_election#By_electoral_district

dta$seat[
  dta$id == 1245 &
    dta$cst == 1 &
    dta$can %in% c(
      "Marion Kindle",
      "Leander Schädler",
      "Helmuth Büchel",
      "Stefan Wenaweser",
      "Helen Konzett Bargetze"
    )
] <- 0


# In Unterland, the following candidates did not win a seat:
#
# - Dominik Oehri
# - Hubert Lampert
#
# https://en.wikipedia.org/wiki/2009_Liechtenstein_general_election#By_electoral_district

dta$seat[
  dta$id == 1245 &
    dta$cst == 2 &
    dta$can %in% c(
      "Dominik Oehri",
      "Hubert Lampert"
    )
] <- 0


# All -990 seat values are 0s

dta$seat[
  dta$id == 1245 &
    dta$seat == -990
] <- 0
