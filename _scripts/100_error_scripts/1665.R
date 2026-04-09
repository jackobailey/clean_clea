# Philippines (November, 1961)

# Data from:
#
# https://en.wikipedia.org/wiki/1961_Philippine_general_election

# The parties split into separate wings, but it isn't clear which candidates
# ran for which wing in all cases. As such, I drop these data.

dta <-
  dta |>
  filter(id != 1665)
