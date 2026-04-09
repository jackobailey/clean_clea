
# Nicaragua (November, 2006)

# Data from:
#
# http://psephos.adam-carr.net/countries/n/nicaragua/nicaragua20062.txt

# Judging by the results at this best-available source, the CLEA data look
# totally wrong, so I will drop this election.

dta <-
  dta |>
  filter(id != 1266)
