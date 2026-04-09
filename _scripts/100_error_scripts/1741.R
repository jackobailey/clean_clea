# Netherlands (March, 2017)

# Best available public sources for the Netherlands' nationwide Tweede Kamer
# election structure.

# Standardise this national election to a party-level nationwide district.

dta <-
  collapse_netherlands(
    dta = dta,
    id = 1741
  )
