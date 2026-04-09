# Dominica (May, 2005)

# Data from:
#
# https://sundominica.com/elections/2005-general-election-2/constituencies/castle-bruce-19/

# In Castle Bruce, the Dominica Labour Party won the seat.

dta$seat[
  dta$id == 904 &
    dta$cst == 1 &
    dta$pty == 3
] <- 0

dta$seat[
  dta$id == 904 &
    dta$cst == 1 &
    dta$pty == 2
] <- 1
