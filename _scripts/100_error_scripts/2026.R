
# Uganda (February, 2021)

# Data from:
#
# https://www.ec.or.ug/ecresults/2021/MPS_RESULTS_2021.pdf
# https://www.ec.or.ug/sites/default/files/ec_publications/The%20Electoral%20Commission%20Annual%20Bulletin%202024.pdf
#
# The EC Uganda 2021 results show ERUTE COUNTY NORTH has two NRM rows, so that
# district is a false positive; RUBAGA DIVISION SOUTH needs LUBEGA moved to SDP.

dta$pty[
  dta$id == 2026 &
    dta$cst == 439 &
    dta$can == "LUBEGA SAMUEL WALTER MUKAAKU"
] <- 17

dta$pty_n[
  dta$id == 2026 &
    dta$cst == 439 &
    dta$can == "LUBEGA SAMUEL WALTER MUKAAKU"
] <- "Social Democratic Party"
