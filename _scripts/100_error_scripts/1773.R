
# UK (June, 2017)

# Data from:
#
# https://members.parliament.uk/member/4676/electionresult
# https://en.wikipedia.org/wiki/Battersea_(UK_Parliament_constituency)

# In cst == 31 (Battersea), Labour won the seat

dta$seat[
  dta$id == 1773 &
    dta$cst == 31 &
    dta$pty == 27
] <- 0

dta$seat[
  dta$id == 1773 &
    dta$cst == 31 &
    dta$pty == 56
] <- 1
