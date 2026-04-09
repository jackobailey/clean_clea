# Ghana (December, 1992)

# Data from:
#
# https://en.wikipedia.org/wiki/1992_Ghanaian_parliamentary_election
# https://data.ipu.org/election-summary/HTML/2123_92.htm

# The published 1992 parliamentary results are regional summaries rather than
# district-level constituency returns, so I will remove this election.

dta <-
  dta |>
  filter(id != 1850)
