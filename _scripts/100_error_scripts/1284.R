
# Saint Kitts and Nevis (March, 2004)

# Data from:
#
# https://web.archive.org/web/20180127015800/http://www.caribbeanelections.com/kn/elections/kn_results_2004.asp
# https://en.wikipedia.org/wiki/2004_Saint_Kitts_and_Nevis_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. Imputing the seats this
# way also gives the correct results: 7 seats for the Labour Party, 2 seats for
# the Concerned Citizens' Movement, 1 seat for the Nevis Reformation Party, and
# 1 seat for the People's Action Movement.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1284,
    votes = "pv1"
  )
