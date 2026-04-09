# United States (November, 1911)

# Data from:
#
# https://en.wikipedia.org/wiki/1911_United_States_House_of_Representatives_elections#New_Mexico

# The special election in New Mexico was for an at-large district with 2 seats.

dta$mag[
  dta$id == 670 &
    dta$cst == 391
] <- 2
