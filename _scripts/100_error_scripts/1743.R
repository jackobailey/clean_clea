
# Romania (December, 2012)

# Data from:
#
# https://legislatie.just.ro/Public/DetaliiDocument/155585

# These district rows are structural, not a single-row typo.
# Parliamentary mandates are allocated at the circumscription / college level,
# so this election is excluded from the district-seat audit.

dta <-
  dta |>
  filter(id != 1743)
