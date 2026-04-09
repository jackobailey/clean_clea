
# Austria (October, 2017)

# Data from:
#
# https://www.parlament.gv.at/verstehen/demokratie-wahlen/parlament-wahlen/wahlen-nr/
# https://en.wikipedia.org/wiki/2017_Austrian_legislative_election

# The Nationalrat is elected in three allocation tiers across 39 regional
# districts and 183 mandates. As such, it is extremely difficult to know whether
# seats were allocated at the district level or not. I am dropping the election
# rather than making assumptions.

dta <-
  dta |>
  filter(id != 2199)
