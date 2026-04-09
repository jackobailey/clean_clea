# Jamaica (December, 1976)

# Data from:
#
# https://www.ecj.com.jm/wp-content/uploads/2017/12/1976GeneralElectionSummary.pdf

# In st catherine north eastern, the jamaica labour party won the seat

dta$seat[
  dta$id == 424 &
    dta$cst == 35 &
    dta$pty == 2
] <- 0

dta$seat[
  dta$id == 424 &
    dta$cst == 35 &
    dta$pty == 1
] <- 1
