
# Kosovo (November, 2007)

# The Elections Archive errata says to drop this election as it appears twice
# https://electiondataarchive.org/data-and-documentation/clea-lower-chamber-elections-archive/errata/

dta <-
  dta |>
  filter(id != 1217)
