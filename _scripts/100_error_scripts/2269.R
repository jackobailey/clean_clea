
# Lebanon (August, 1992)

# Data from:
#
# https://data.ipu.org/election-summary/HTML/2179_92.htm
# https://monthlymagazine.com/cms/upload/magazine/Issue%20117%20-%20April%202012.pdf
#
# Akkar had 7 seats in the 1992 North Lebanon district structure, and Jbeil had
# 3 seats.

dta$mag[
  dta$id == 2269 &
    dta$cst == 1
] <- 7

dta$mag[
  dta$id == 2269 &
    dta$cst == 10
] <- 3
