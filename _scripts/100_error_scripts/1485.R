
# Mongolia (June, 2008)

# Data from:
#
# https://en.wikipedia.org/wiki/2008_Mongolian_parliamentary_election#Results_by_constituency

# As before, all sorts of data are missing here. No idea what has happened, so
# I will drop this election.

dta <-
  dta |>
  filter(id != 1485)
