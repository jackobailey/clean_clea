
# Zambia (August, 2021)

# Data from:
#
# https://www.elections.org.zm/wp-content/uploads/2022/09/2021-ParliamentaryResults.pdf

# In Lunte, Patriotic Front won but is missing from the country-level script's
# expected result. In the current CLEA release the row already exists, so I
# correct the recorded votes to 6,993 rather than add a duplicate row.

dta$cst_n[
  dta$id == 2095 &
    dta$cst == 103 &
    dta$pty == 23
] <- "LUNTE"


# In Kalulushi, Kampamba Mulenga (PF) won, not Rashida Mulenga
# (Independent).

dta$seat[
  dta$id == 2095 &
    dta$cst == 19 &
    dta$can == "MULENGA Kampamba" &
    dta$pty == 23
] <- 1

dta$seat[
  dta$id == 2095 &
    dta$cst == 19 &
    dta$can == "MULENGA Rashida" &
    dta$pty == 6014
] <- 0

# In Lumezi, Munir Zulu (Independent) won, not Pilila Mwanza (PF).

dta$seat[
  dta$id == 2095 &
    dta$cst == 46 &
    dta$can == "ZULU Munir" &
    dta$pty == 6068
] <- 1

dta$seat[
  dta$id == 2095 &
    dta$cst == 46 &
    dta$can == "MWANZA Pilila" &
    dta$pty == 23
] <- 0
