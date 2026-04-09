
# Mongolia (June, 2004)

# Data from:
#
# https://en.wikipedia.org/wiki/2004_Mongolian_parliamentary_election#Results_by_constituency

# These data are all wrong. They make it look like manyof the constituencies
# were uncontested, but they weren't. No idea what has happened here, but since
# I don't have time to collect all of this data, I'll drop this election.

dta <-
  dta |>
  filter(id != 1484)
