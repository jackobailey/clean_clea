
# Turks and Caicos Islands (February, 2007)

# In South Backsalina, Floyd Seymour was elected
#
# https://www.gov.tc/stats/2007
# https://web.archive.org/web/20210618205918/http://www.caribbeanelections.com/tc/elections/tc_results_2007.asp
# https://www.scribd.com/document/828482775/2007-General-Election

dta$seat[
  dta$id == 1333 &
    dta$cst == 11 &
    dta$pty == 3
] <- 1
