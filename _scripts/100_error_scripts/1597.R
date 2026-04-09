# Nigeria (April, 2011)

# Data from:
#
# https://inecnigeria.org/wp-content/uploads/2019/02/HOUSE-OF-REPS-2011.pdf
# https://thenigerialawyer.com/rep-elect-sued-over-alleged-forgery/

# Bosso/Paikoro is marked "ELECTED COURT ORDER" in the official INEC results,
# and Ndokwa/Ukwuani was also tied up in post-election litigation. I preserve
# the original decision to drop the whole election rather than guess which
# outcomes should be treated as final.

dta <-
  dta |>
  filter(id != 1597)
