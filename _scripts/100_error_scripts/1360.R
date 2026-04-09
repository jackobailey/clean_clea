
# Australia (November, 2007)

# Data from:
#
# https://en.wikipedia.org/wiki/2007_Australian_House_of_Representatives_election#Australia

# In Farrer (cst == 47), the Liberals won the seat
# https://en.wikipedia.org/wiki/Electoral_results_for_the_Division_of_Farrer#2007

dta$seat[
  dta$id == 1360 &
    dta$cst == 47 &
    dta$pty == 45
] <- 1


# In Eden-Monaro (cst == 44), Labor won the seat
# https://en.wikipedia.org/wiki/Electoral_results_for_the_Division_of_Eden-Monaro#2007

dta$seat[
  dta$id == 1360 &
    dta$cst == 44 &
    dta$pty == 8
] <- 1
