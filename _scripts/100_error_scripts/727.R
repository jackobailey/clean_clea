# Australia (December, 1903)

# Data from:
#
# https://adb.anu.edu.au/biography/ryan-thomas-8316
# https://firstparliament.senate.gov.au/members/ronald.html
# https://en.wikipedia.org/wiki/Candidates_of_the_1903_Australian_federal_election

# In Capricornia, Thomas Ryan was an independent.

dta$pty_n[
  dta$id == 727 &
    dta$cst == 14 &
    dta$can == "thomas ryan"
] <- "independent"

dta$pty[
  dta$id == 727 &
    dta$cst == 14 &
    dta$can == "thomas ryan"
] <- 6001


# In Southern Melbourne, James Ronald was the Labor candidate; the other
# candidates were independent protectionists.

dta$pty_n[
  dta$id == 727 &
    dta$cst == 65 &
    dta$pty == 69
] <- "independent"

dta$pty[
  dta$id == 727 &
    dta$cst == 65 &
    dta$pty == 69
] <- 6001:6003
