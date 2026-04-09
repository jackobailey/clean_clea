# Jamaica (February, 1993)

# Data from:
#
# https://www.ecj.com.jm/wp-content/uploads/2017/12/1993GeneralElectionBoxbyBox.pdf

# In st. andrew north western, the jamaica labour party won the seat

dta$seat[
  dta$id == 428 &
    dta$cst == 23 &
    dta$pty == 2
] <- 0

dta$seat[
  dta$id == 428 &
    dta$cst == 23 &
    dta$pty == 1
] <- 1


# In st. catherine central, the jamaica labour party won the seat

dta$seat[
  dta$id == 428 &
    dta$cst == 34 &
    dta$pty == 2
] <- 0

dta$seat[
  dta$id == 428 &
    dta$cst == 34 &
    dta$pty == 1
] <- 1


# In kingston central, the people's national party won the seat

dta$seat[
  dta$id == 428 &
    dta$cst == 9 &
    dta$pty == 1
] <- 0

dta$seat[
  dta$id == 428 &
    dta$cst == 9 &
    dta$pty == 2
] <- 1
