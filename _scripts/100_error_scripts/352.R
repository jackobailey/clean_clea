# Iceland (June, 1930)

# Data from:
#
# https://en.wikipedia.org/wiki/1930_Icelandic_parliamentary_election

# The data include election results for 1930, but they were for the upper
# house. As such, I drop them from the data.

dta <-
  dta |>
  filter(id != 352)
