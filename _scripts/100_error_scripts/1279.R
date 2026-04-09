
# Saint Kitts and Nevis (July, 1984)

# Data from:
#
# https://web.archive.org/web/20180127015519/http://www.caribbeanelections.com/kn/elections/kn_results_1984.asp
# https://en.wikipedia.org/wiki/1984_Saint_Kitts_and_Nevis_general_election

# One constituency (Nevis #10) was uncontested and went to the Nevis Reformation
# Party. I will add this in. Then, since we know that the country used FPTP, I
# will imputing the seats based on the largest vote-winner. This also gives the
# correct results: 6 seats for the People's Action Movement, 3 seats for the
# Nevis Reformation Party, and 2 seats for the Labour Party.

dta <-
  dta |>
  add_row(
    id = 1279,
    ctr_n = "Saint Kitts and Nevis",
    ctr = 659,
    yr = 1984,
    mn = 7,
    cst_n = "Nevis #10",
    cst = 11,
    pty_n = "Nevis Reformation Party",
    pty = 3,
    can = "-990",
    cv1 = -990,
    pv1 = -990,
    seat = 1
  )


dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1279,
    votes = "pv1"
  )
