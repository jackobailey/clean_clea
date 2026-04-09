
# Malta (September, 1945)

# Data from:
#
# https://www.um.edu.mt/r/projects/maltaelections/elections/parliamentary

# For some reason, candidates are given seat counts of 5 and 4. These should be
# 1 instead. Likewise, five Labour candidates are given seats in district 2 when
# only 4 won a seat. Bertram Camilleri did not win a seat.

dta$seat[
  dta$id == 1463 &
    dta$seat > 0
] <- 1

dta$seat[
  dta$id == 1463 &
    dta$can == "Camilleri, Bertram"
] <- 0
