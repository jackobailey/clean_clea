
# Uganda (February, 2011)

# Data from:
# https://www.ec.or.ug/sites/Elec_results/2011_Direct_MPs.pdf

# Results in JIE COUNTY are mixed in with those from JINJA MUNICIPALITY EAST. I
# will allocate JIE COUNTY to cst == 350

dta$cst[
  dta$id == 1681 &
    dta$cst_n == "JIE COUNTY"
] <- 350


# In Bubulo County East, MULONGO SIMON won, not TSEWULE MARTINS MUSUNDI

dta$seat[
  dta$id == 1681 &
    dta$cst == 13 &
    dta$can == "TSEWULE MARTINS MUSUNDI"
] <- 0

dta$seat[
  dta$id == 1681 &
    dta$cst == 13 &
    dta$can == "MULONGO SIMON"
] <- 1


# In Nakifuma County, KAFEERO SSEKITOLEKO ROBERT won, not NAKILIZA PROSSY

dta$seat[
  dta$id == 1681 &
    dta$cst == 190 &
    dta$can == "NAKILIZA PROSSY"
] <- 0

dta$seat[
  dta$id == 1681 &
    dta$cst == 190 &
    dta$can == "KAFEERO SSEKITOLEKO ROBERT"
] <- 1
