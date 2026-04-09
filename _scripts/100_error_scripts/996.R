
# Poland (September, 2005)

# Data from:
#
# https://en.wikipedia.org/wiki/2005_Polish_parliamentary_election#By_constituency
# (Click through to the constituencies for the results)

# For some reason, parties that won no seats are recorded as having missing seat
# counts. I will correct this.

dta$seat[
  dta$id == 996 &
    dta$seat == -990 &
    dta$pv1 != -990
] <- 0


# In gdansk, po won 6 seats, not 4
#
# https://en.wikipedia.org/wiki/Sejm_Constituency_no._25

dta$seat[
  dta$id == 996 &
    dta$cst == 8 &
    dta$pty == 141
] <- 6
