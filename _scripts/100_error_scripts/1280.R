
# Saint Kitts and Nevis (March, 1989)

# Data from:
#
# https://web.archive.org/web/20180127015524/http://www.caribbeanelections.com/kn/elections/kn_results_1989.asp
# https://en.wikipedia.org/wiki/1989_Saint_Kitts_and_Nevis_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. Imputing the seats this
# way also gives the correct results: 6 seats for the People's Action Movement,
# 2 seats for the Labour Party, 2 seats for the Nevis Reformation Party, and 1
# seat for the Concerned Citizens' Movement.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1280,
    votes = "pv1"
  )
