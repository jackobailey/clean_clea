
# Australia (August, 2010)

# Data from:
#
# https://en.wikipedia.org/wiki/Results_of_the_2010_Australian_federal_election_(House_of_Representatives)

# In Melbourne Ports  (cst == 107), Labor won the seat
# https://en.wikipedia.org/wiki/Electoral_results_for_the_Division_of_Melbourne_Ports

dta$seat[
  dta$id == 1361 &
    dta$cst == 107 &
    dta$pty == 8
] <- 1


# In Melbourne (cst == 106), the secular party did not win a seat
# https://en.wikipedia.org/wiki/Electoral_results_for_the_Division_of_Melbourne#2010

dta$seat[
  dta$id == 1361 &
    dta$cst == 106 &
    dta$pty == 167
] <- 0
