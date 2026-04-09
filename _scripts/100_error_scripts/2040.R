
# Bulgaria (July, 2021)

# In Yambol, some of the candidates are missing (first place on 9860 and fourth
# place on 3244). I can't vouch for these data and I don't have time to audit
# them (plus they're in Bulgarian), so I'm dropping this election.
#
# https://results.cik.bg/pi2021_07/rezultati/31.html

dta <-
  dta |>
  filter(id != 2040)
