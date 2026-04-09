
# Nicaragua (February, 1990)

# Data from:
#
# https://www.electionpassport.com/electoral-systems/nicaragua/

# Seats were allocated at the regional level, whereas the CLEA data are at the
# departmental level. Out of an abundance of caution, I will drop this election.

dta <-
  dta |>
  filter(id != 1263)
