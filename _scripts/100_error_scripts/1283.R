
# Saint Kitts and Nevis (March, 2000)

# Data from:
#
# https://web.archive.org/web/20180127015755/http://www.caribbeanelections.com/kn/elections/kn_results_2000.asp
# https://en.wikipedia.org/wiki/2000_Saint_Kitts_and_Nevis_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. Imputing the seats this
# way also gives the correct results: 8 seats for the Labour Party, 2 seats for
# the Concerned Citizens' Movement, and 1 seat for the Nevis Reformation Party.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1283,
    votes = "pv1"
  )
