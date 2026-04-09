
# Nepal (April, 2008)

# I'm not sure that these results are correct, judging by what I can see on both
# Wikipedia and an archived version of the Nepalese elections website. As such,
# I will drop this election.
#
# https://en.wikipedia.org/wiki/List_of_members_elected_in_the_2008_Nepalese_Constituent_Assembly_election
# https://web.archive.org/web/20091003184536/http://www.election.gov.np/reports/CAResults/reportBody.php

dta <-
  dta |>
  filter(id != 923)
