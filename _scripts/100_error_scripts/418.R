
# Jamaica (December, 1949)

# Data from:
#
# https://www.ecj.com.jm/wp-content/uploads/2017/07/19491220generaldetailed.pdf

# In clarendon north western, the jamaica labour party won the seat

dta$seat[
  dta$id == 418 &
    dta$cst == 2 &
    dta$pty == 1
] <- 1
