
# Saint Lucia (April, 1961)

# Seat counts are missing, but the country used first-past-the-post so we can
# reliably impute them from the vote counts. Note that this gives the correct
# aggregate results.
#
# https://en.wikipedia.org/wiki/1961_Saint_Lucian_general_election

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 941,
    votes = "cv1"
  )
