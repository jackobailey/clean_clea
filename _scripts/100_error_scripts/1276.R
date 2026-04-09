
# Saint Kitts and Nevis (May, 1971)

# Data from:
#
# https://pdba.georgetown.edu/Elecdata/Kitts/parl52_75.html
# https://en.wikipedia.org/wiki/1971_Saint_Kitts-Nevis-Anguilla_general_election
# https://en.wikipedia.org/wiki/1972_Anguillian_general_election

# These data do not include seats. However, we know that the country used FPTP,
# so the seat winner should just be the largest party. We cannot simply impute
# the seats in this case, however, since one of the seats (cst == 1) has no vote
# data and there are also more districts (10) than seats allocated according to
# other sources (9).

# This looks to be because the British took over Anguilla (cst == 1) in 1971 and
# held elections a year later. If I drop Anguilla from the data, the seat totals
# are correct: 7 seats for Labour, 1 seat for the People's Action Movement, and
# 1 seat for the Nevis Reformation Party.

dta <-
  dta |>
  filter(!(id == 1276 & cst == 1))


dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1276,
    votes = "pv1"
  )
