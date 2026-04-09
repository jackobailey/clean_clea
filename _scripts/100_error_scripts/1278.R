
# Saint Kitts and Nevis (February, 1980)

# Data from:
#
# https://en.wikipedia.org/wiki/1980_Saint_Kitts_and_Nevis_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. Imputing the seats this
# way also gives the correct results: 4 seats for the Labour Party, 3 seats for
# the People's Action Movement, and 2 seats for the Nevis Reformation Party.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1278,
    votes = "pv1"
  )
