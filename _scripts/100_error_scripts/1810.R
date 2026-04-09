# Malaysia (April, 1982)

# Data from:
#
# https://en.wikipedia.org/wiki/Kota_Belud_(federal_constituency)

# In District 117 (Kota Belud), Mohammad Yahya bin Lampong won, not Sisamdin
# bin Bugan.

dta$seat[
  dta$id == 1810 &
    dta$cst == 117 &
    dta$can == "Sisamdin bin Bugan"
] <- 0

dta$seat[
  dta$id == 1810 &
    dta$cst == 117 &
    dta$can == "Mohammad Yahya bin Lampong"
] <- 1
