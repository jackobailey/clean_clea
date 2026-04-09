# Jamaica (February, 1967)

# Data from:
#
# https://www.ecj.com.jm/wp-content/uploads/2017/07/19670221generaldetailed.pdf

# In trelawny northern, the people's national party candidate won 4562 votes,
# not 4852

dta$pv1[
  dta$id == 422 &
    dta$cst == 48 &
    dta$pty == 2
] <- 4562


# In clarendon northern, the jamaica labour party won the seat

dta$seat[
  dta$id == 422 &
    dta$cst == 3 &
    dta$pty == 2
] <- 0

dta$seat[
  dta$id == 422 &
    dta$cst == 3 &
    dta$pty == 1
] <- 1
