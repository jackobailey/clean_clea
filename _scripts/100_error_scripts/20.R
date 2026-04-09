
# Cameroon (May, 1997)

# In faro-et-déo (cst == 12), magnitudes vary within the district. The correct
# magnitude according to this report is 1.
#
# https://www.ifes.org/sites/default/files/migrate/r01556.pdf

dta$mag[
  dta$id == 20 &
    dta$cst == 12
] <- 1
