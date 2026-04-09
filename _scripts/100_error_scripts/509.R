# Netherlands (February, 1967)

# Data from:
#
# https://www.parlement.com/id/vkcakxvbdpqc/tweede_kamerverkiezingen_1917
# https://www.kiesraad.nl/verkiezingen/tweede-kamer/kandidaatstelling/kieskringen
#
# Best available public sources for the Netherlands' nationwide Tweede Kamer election structure.

# Aggregate the Netherlands rows back to a single nationwide district for this election.

dta <-
  collapse_netherlands(
    dta = dta,
    id = 509
  )
