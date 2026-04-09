
# Jamaica (April, 1962)

# Data from:
#
# https://ecj.com.jm/wp-content/uploads/2017/07/19620410generaldetailed.pdf

# In clarendon north western, the jamaica labour party won

dta$seat[
  dta$id == 421 &
    dta$cst == 2 &
    dta$pty == 2
] <- 0

dta$seat[
  dta$id == 421 &
    dta$cst == 2 &
    dta$pty == 1
] <- 1
