
# Saint Kitts and Nevis (November, 1957)

# Data from:
#
# https://pdba.georgetown.edu/Elecdata/Kitts/parl52_75.html
# https://en.wikipedia.org/wiki/1952_Saint_Kitts-Nevis-Anguilla_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. Imputing the seats this
# way also gives the correct results: 5 seats for the Labour Party and 3 seats
# for the Independents.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1273,
    votes = "pv1"
  )
