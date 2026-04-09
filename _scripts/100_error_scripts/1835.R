
# Anguilla (April 2015)

# Data from:
#
# https://theanguillian.com/2015/04/the-six-auf-elected-candidates-they-stunningly-defeated-the-aum-candidates/

# In cst == 1 (District 1: Island Harbour), Pamalvon WEBSTER won the seat

dta$seat[
  dta$id == 1835 &
    dta$cst == 1 &
    dta$pty == 5001
] <- 0

dta$seat[
  dta$id == 1835 &
    dta$cst == 1 &
    dta$pty == 6001
] <- 1
