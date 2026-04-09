
# Lebanon (April, 1964)

# Data from:
#
# https://en.wikipedia.org/wiki/Jean_Aziz
# https://fr.wikipedia.org/wiki/Maroun_Kanaan

# Jezzine had 3 seats in 1964; Jean Aziz was re-elected and Maroun Kanaan was
# on the winning list.

dta$seat[
  dta$id == 2266 &
    dta$cst == 13 &
    dta$can == "Kanaan Maroun"
] <- 1
