# Trinidad and Tobago (August, 2020)

# Data from:
#
# https://en.wikipedia.org/wiki/2020_Trinidad_and_Tobago_general_election#Results_by_constituency

# In Laventille East-Morvant, the People's National Movement won, not the
# United National Congress.

dta$seat[
  dta$id == 2020 &
    dta$cst == 18 &
    dta$pty == 20
] <- 0

dta$seat[
  dta$id == 2020 &
    dta$cst == 18 &
    dta$pty == 14
] <- 1
