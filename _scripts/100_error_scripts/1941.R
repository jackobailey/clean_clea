# Guyana (August, 2020)

# Data from:
#
# https://gecom.org.gy/public/assets/docs/results/2020%20-%20General%20and%20Regional%20Elections/Tabulation-General-2020.pdf

# In Geographical Constituency, Region No. 1, People's Progressive Party/Civic
# won 8,002 votes, not 59.

dta$pv1[
  dta$id == 1941 &
    dta$cst == 1 &
    dta$pty == 18
] <- 8002


# In Geographical Constituency, Region No. 9, People's Progressive Party/Civic
# won the seat.

dta$seat[
  dta$id == 1941 &
    dta$cst == 9 &
    dta$pty == 5004
] <- 0

dta$seat[
  dta$id == 1941 &
    dta$cst == 9 &
    dta$pty == 18
] <- 1


# The original country-level script also recoded National Top-Up to `cst ==
# 901`, but the current raw `dta` already has that code, so no additional
# mutation is needed.
