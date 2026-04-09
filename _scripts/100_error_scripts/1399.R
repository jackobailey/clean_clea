
# Finland (April, 2015)

# In the Region of Åland constituency, all candidates are coded as Other and
# share a constant party-wide vote, so I blank out the party vote count.

dta$pv1[
  dta$id == 1399 &
    dta$cst == 7
] <- -990
