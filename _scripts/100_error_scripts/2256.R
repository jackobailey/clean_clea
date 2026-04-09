
# Lebanon (October 1927)

# Data from:
#
# https://en.wikipedia.org/wiki/1927_Lebanese_general_election
# https://www.lp.gov.lb/CustomPage?Id=9

# I am not sure that there actually *was* an election in Lebanon in 1927. Rather
# it seems that there was a constitutional amendment on 17 October 1927 that
# abolished the Senate and folded its 16 members into the Chamber. That would
# explain why all of the candidates in the CLEA data are uncontested. Since this
# is not an election, I will remove it from the data.

dta <-
  dta |>
  filter(id != 2256)
