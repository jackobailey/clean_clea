
# Malawi (May, 2014)

# Data from:
# https://web.archive.org/web/20140627091857/http://www.mec.org.mw/Portals/0/Parliament%20results.pdf
# https://web.archive.org/web/20141027231749/http://mec.org.mw/Portals/0/Repository/By-Election%20Results%20for%20October%202014%20-%20Parliamentary.pdf

# cst == 57 is coded as "Kasungu North East" but is "Kasungu North North East"

dta$cst_n[
  dta$id == 1454 &
    dta$cst == 57
] <- "Kasungu North North East"


# cst == 154 is coded as "Ntcheu Bwanje South" but is "Ntcheu Central"

dta$cst_n[
  dta$id == 1454 &
    dta$cst == 154
] <- "Ntcheu Central"
