
# Saint Kitts and Nevis (July, 1995)

# Data from:
#
# https://web.archive.org/web/20180127015750/http://www.caribbeanelections.com/kn/elections/kn_results_1995.asp
# https://en.wikipedia.org/wiki/1995_Saint_Kitts_and_Nevis_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. Imputing the seats this
# way also gives the correct results: 7 seats for the Labour Party, 2 seats for
# the Concerned Citizens' Movement, 1 seat for the People's Action Movement, and
# 1 seat for the Nevis Reformation Party.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1282,
    votes = "pv1"
  )
