# Iceland (July, 1922)

# Data from:
#
# https://en.wikipedia.org/wiki/1922_Icelandic_parliamentary_election

# The data include election results for 1922, but they were for the upper
# house. As such, I drop them from the data.

dta <-
  dta |>
  filter(id != 348)
