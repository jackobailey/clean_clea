
# Saint Kitts and Nevis (July, 1966)

# Data from:
#
# https://pdba.georgetown.edu/Elecdata/Kitts/parl52_75.html
# https://en.wikipedia.org/wiki/1966_Saint_Kitts-Nevis-Anguilla_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. Imputing the seats this
# way also gives the correct results: 7 seats for the Labour Party, 2 seats for
# the People's Action Movement, and 1 seat for the United National Movement.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1275,
    votes = "pv1"
  )
