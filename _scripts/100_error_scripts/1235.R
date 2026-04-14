
# Liechtenstein (February 1974)

# Data from:
#
# https://www.statistikportal.li/de/publikation/101-statistisches-jahrbuch/1977/01/v-1/p2915
# https://en.wikipedia.org/wiki/1974_Liechtenstein_general_election#By_electoral_district

# In cst == 1 (Oberland), the Progressive Citizens’ Party won 5 seats and the
# Patriotic Union won 4

dta$seat[
  dta$id == 1235 &
    dta$cst == 1 &
    dta$pty == 5
] <- 5

dta$seat[
  dta$id == 1235 &
    dta$cst == 1 &
    dta$pty == 4
] <- 4
