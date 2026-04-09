
# Ecuador (May 1992)

# Data from:
#
# https://www.johnpolga.com/uploads/1/8/1/0/18107767/ecuador_1979-2013.xlsx

# The seat allocations don't make sense in this election and the nation-wide
# results are missing. Since the sum of the vote counts are more similar to the
# national figures than the list, I suspect that there might have been a mix up.
# I will drop this election

dta <-
  dta |>
  filter(id != 1180)
