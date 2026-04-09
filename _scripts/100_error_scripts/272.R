# France (March, 1986)

# Data from:
#
# https://www.assemblee-nationale.fr/histoire/leg5repnew.asp
# https://data.ipu.org/election-summary/PDF/FRANCE_1986_E.PDF
# https://fr.wikipedia.org/wiki/Résultats_par_département_des_élections_législatives_françaises_de_1986
#
# The Assembly's 1986 archive confirms the nationwide seat allocation, and the
# departmental breakdown in the CLEA rows is not reliable. The ecologist vote
# entries are also not cleanly separable here, so I will remove this election.

dta <-
  dta |>
  filter(id != 272)
