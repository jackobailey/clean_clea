
# Lebanon (March, 1968)

# Data from:
#
# https://en.wikipedia.org/wiki/1968_Lebanese_general_election

# Keserwan's winning rows total seven seats in the source table, so the
# district magnitude should be 7.

dta$mag[
  dta$id == 2267 &
    dta$cst == 15
] <- 7
