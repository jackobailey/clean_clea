# Lebanon (April, 2018)

# Data from:
#
# https://www.ministryinfo.gov.lb/en/22598
# https://www.ndi.org/sites/default/files/sites/default/files/Lebanon%202018%20Parliamentary%20Elections_Final%20Report%20%28v.3%29_1.pdf
# https://www.opendatalebanon.org/job/lebanese-parliamentary-election-2018-result-data/
#
# The 2018 law and the detailed results are organised around minor districts,
# but the CLEA rows are only reported at the larger district level. That makes
# the threshold calculations inconsistent, so I will remove this election.

dta <-
  dta |>
  filter(id != 1803)
