# Cyprus (December, 1985)

# Data from:
#
# https://www.parliament.cy/en/general-information/election-composition-and-dissolution-of-the-house-of-representatives
# http://results.elections.moi.gov.cy/English/PARLIAMENTARY_ELECTIONS_2001
#
# The party-level collapse follows Cyprus's open-list parliamentary system.
# For older elections, this is the best readily verifiable online source mix I found.

# Collapse the Cyprus rows to the party level for this election.

dta <-
  collapse_cyprus(
    dta = dta,
    id = 1796
  )

