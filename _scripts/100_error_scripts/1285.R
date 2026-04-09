
# Saint Kitts and Nevis (January, 2010)

# Data from:
#
# https://web.archive.org/web/20180125200607/http://www.caribbeanelections.com/kn/elections/kn_results_2010.asp
# https://en.wikipedia.org/wiki/2010_Saint_Kitts_and_Nevis_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. Imputing the seats this
# way also gives the correct results: 6 seats for the Labour Party, 2 seats for
# the Concerned Citizens' Movement, 2 seat for the People's Action Movement, and
# 1 seat for the Nevis Reformation Party.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1285,
    votes = "pv1"
  )
