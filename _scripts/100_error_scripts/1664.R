# Philippines (November, 1957)

# Data from:
#
# https://en.wikipedia.org/wiki/1957_Philippine_general_election

# The parties split into separate wings, but it isn't clear which candidates
# ran for which wing in all cases. As such, I drop these data.

dta <-
  dta |>
  filter(id != 1664)
