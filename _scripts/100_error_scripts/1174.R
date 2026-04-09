
# Cyprus (May, 2001)

# Data from:
#
# http://results.elections.moi.gov.cy/English/PARLIAMENTARY_ELECTIONS_2001
# https://el-wikipedia-org.translate.goog/wiki/Εκλογική_περιφέρεια_Λευκωσίας?_x_tr_sl=auto&_x_tr_tl=en&_x_tr_hl=en-US&_x_tr_pto=wapp&_x_tr_hist=true
# https://www.parliament.cy/en/general-information/election-composition-and-dissolution-of-the-house-of-representatives

# Collapse the Cyprus rows to the party level for this election since the open
# list votes do not sum to the party votes.

dta <-
  collapse_cyprus(
    dta = dta,
    id = 1174
  )

# In Larnaka (cst == 3), the district magnitude was 5, not 6

dta$mag[
  dta$id == 1174 &
    dta$cst == 3
] <- 5


# In Lefkosia (Nicosia) (cst == 4), the district magnitude was 21, not 20

dta$mag[
  dta$id == 1174 &
    dta$cst == 4
] <- 21
