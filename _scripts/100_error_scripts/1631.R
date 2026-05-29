
# Kuwait (January, 1971)

# Data from:
#
# https://www.kuwaitpolitics.org/elec197100d197101.htm

# In district 1, candidate 1 is listed with 890 votes in the Kuwait Politics
# database. The raw row has 89, which creates the false rank-size violation.

dta$cv1[
  dta$id == 1631 &
    dta$cst == 1 &
    dta$can == "1" &
    dta$pty == 6001
] <- 890
