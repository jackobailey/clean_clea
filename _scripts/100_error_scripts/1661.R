# Philippines (April, 1946)

# Data from:
#
# https://en.wikipedia.org/wiki/1946_Philippine_general_election

# Many candidates have missing vote counts, so it is not possible to compute
# various necessary quantities.

dta <-
  dta |>
  filter(id != 1661)
