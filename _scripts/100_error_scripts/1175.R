
# Cyprus (May, 2006)

# Data from:
#
# http://results.elections.moi.gov.cy/English/PARLIAMENTARY_ELECTIONS_2006
# https://el-wikipedia-org.translate.goog/wiki/Εκλογική_περιφέρεια_Λευκωσίας?_x_tr_sl=auto&_x_tr_tl=en&_x_tr_hl=en-US&_x_tr_pto=wapp&_x_tr_hist=true
# https://www.parliament.cy/en/general-information/election-composition-and-dissolution-of-the-house-of-representatives

# Collapse the Cyprus rows to the party level for this election.

dta <-
  collapse_cyprus(
    dta = dta,
    id = 1175
  )


# In Larnaka, the district magnitude was 5, not 6

dta$mag[
  dta$id == 1175 &
    dta$cst == 3
] <- 5


# In Lefkosia (Nicosia), the district magnitude was 21, not 20

dta$mag[
  dta$id == 1175 &
    dta$cst == 4
] <- 21
