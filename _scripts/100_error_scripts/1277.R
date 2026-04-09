
# Saint Kitts and Nevis (December, 1975)

# Data from:
#
# https://pdba.georgetown.edu/Elecdata/Kitts/parl52_75.html
# https://en.wikipedia.org/wiki/1975_Saint_Kitts-Nevis-Anguilla_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. Imputing the seats this
# way also gives the correct results: 7 seats for the Labour Party and 2 seats
# for Nevis Reformation Party.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1277,
    votes = "pv1"
  )
