# Iceland (July, 1926)

# Data from:
#
# https://en.wikipedia.org/wiki/1926_Icelandic_parliamentary_election

# The data include election results for 1926, but they were for the upper
# house. As such, I drop them from the data.

dta <-
  dta |>
  filter(id != 350)
