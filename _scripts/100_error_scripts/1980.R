
# Niue (May 2017)

# Data from:
#
# https://en.wikipedia.org/wiki/2017_Niuean_general_election
# https://web.archive.org/web/20170516103150/http://www.talaniue.com/2017/05/election-17-provisional-results.html

# In cst == 9 (Mutalau), a tie was decided by coin toss. Maureen Melekitama won.

dta$seat[
  dta$id == 1980 &
    dta$cst == 9
] <- 0

dta$seat[
  dta$id == 1980 &
    dta$cst == 9 &
    dta$can == "Melekitama, Florence Maureen V"
] <- 1
