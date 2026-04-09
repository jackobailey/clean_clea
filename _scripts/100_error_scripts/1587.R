# Jamaica (October, 2002)

# Data from:
#
# https://www.ecj.com.jm/wp-content/uploads/2017/12/2002GeneralElectionSummary.pdf

# In st. andrew western, the independent candidate won 20 votes, not 0

dta$pv1[
  dta$id == 1587 &
    dta$cst == 29 &
    dta$pty == 6007
] <- 20
