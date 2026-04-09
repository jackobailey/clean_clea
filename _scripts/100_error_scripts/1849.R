
# Germany (September, 2017)

# Data from:
#
# https://www.bundeswahlleiterin.de/en/dam/jcr/5c751fa4-cbfa-4d36-837b-2cd0bcf0b7f3/btw17_arbtab3.pdf
# https://en.wikipedia.org/wiki/Soest_(electoral_district)


# The following cst values are coded below 900 even though they are Land list
# units in the mixed-member upper tier, not ordinary single-member
# constituencies. The same election already contains 299 single-member
# constituencies at cst == 1-299; the Länder list tier should therefore sit in
# the 900+ range.
#
# Language/context:
# - German electoral law distinguishes constituency seats from Land lists
#   ("Landeslisten").
# - These 16 names are Länder, not ordinary Wahlkreise.
#
# Flagged cases:
# - cst == 300: Baden-Württemberg
# - cst == 301: Bayern
# - cst == 302: Berlin
# - cst == 303: Brandenburg
# - cst == 304: Bremen
# - cst == 305: Hamburg
# - cst == 306: Hessen
# - cst == 307: Mecklenburg-Vorpommern
# - cst == 308: Niedersachsen
# - cst == 309: Nordrhein-Westfalen
# - cst == 310: Rheinland-Pfalz
# - cst == 311: Saarland
# - cst == 312: Sachsen
# - cst == 313: Sachsen-Anhalt
# - cst == 314: Schleswig-Holstein
# - cst == 315: Thüringen

dta$cst[
  dta$id == 1849 &
    dta$cst %in% 300:315
] <-
  match(
    dta$cst_n[dta$id == 1849 & dta$cst %in% 300:315],
    unique(dta$cst_n[dta$id == 1849 & dta$cst %in% 300:315])
  ) + 900


# In cst == 146 (Soest), Hans-Jürgen Thies (CDU) won the seat

dta$seat[
  dta$id == 1849 &
    dta$cst == 146 &
    dta$can == "Elsner von Gronow, Gerhard Helmuth Berengar"
] <- 0

dta$seat[
  dta$id == 1849 &
    dta$cst == 146 &
    dta$can == "Thies, Hans-Jürgen"
] <- 1
