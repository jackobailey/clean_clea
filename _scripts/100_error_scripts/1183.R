# Ecuador (October, 2006)

# Data from:
#
# http://psephos.adam-carr.net/countries/e/ecuador/ecuador20063.txt
#
# The results in Pastaza do not match the best available public returns, so I
# remove this election for now.

dta <-
  dta |>
  filter(id != 1183)
