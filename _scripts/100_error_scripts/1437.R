
# Italy (April, 2008)

# Various constituency names share cst values. The offending constituency seems
# to be FRIULI-VENEZIA GIULIA. The results are not identical to the Wikipedia
# page, but seem comparable (which is normal with these data). I will set this
# constituency such that cst == 28.
#
# https://en.wikipedia.org/wiki/2008_Italian_general_election_in_Friuli-Venezia_Giulia

dta$cst[
  dta$id == 1437 &
    dta$cst_n == "FRIULI-VENEZIA GIULIA"
] <- 28
