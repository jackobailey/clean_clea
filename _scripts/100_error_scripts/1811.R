# Malaysia (October, 1990)

# Data from:
#
# https://en.wikipedia.org/wiki/Selangau_(federal_constituency)
# https://en.wikipedia.org/wiki/Baram_(federal_constituency)
# https://en.wikipedia.org/wiki/Maran_(federal_constituency)

# In District 174 (Selangau), Joseph Mauh won, not Linton Albert.

dta$seat[
  dta$id == 1811 &
    dta$cst == 174 &
    dta$can == "Linton Albert"
] <- 0

dta$seat[
  dta$id == 1811 &
    dta$cst == 174 &
    dta$can == "Joseph Mauh"
] <- 1


# In District 179 (Baram), Harrison Ngau Laing won, not Jok Ding.

dta$seat[
  dta$id == 1811 &
    dta$cst == 179 &
    dta$can == "Jok Ding"
] <- 0

dta$seat[
  dta$id == 1811 &
    dta$cst == 179 &
    dta$can == "Harrison Ngau Laing"
] <- 1


# In District 077 (Marang), the Barisan Nasional has a spelling mistake on the
# constituency name.

dta$cst_n[
  dta$id == 1811 &
    dta$cst == 77
] <- "District 077 (Maran)"
