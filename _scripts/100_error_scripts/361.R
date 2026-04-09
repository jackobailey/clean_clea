# Iceland (June, 1956)

# Data come from:
#
# https://timarit.is/page/6649171#page/n0/mode/2up

# In snaefellsnessýsla, alþýðuflokkur did not win a seat

dta$seat[
  dta$id == 361 &
    dta$cst == 18 &
    dta$pty == 2
] <- 0
