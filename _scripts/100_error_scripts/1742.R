
# Romania (November, 2004)

# Data from:
#
# https://legislatie.just.ro/Public/DetaliiDocument/55496

# These district rows are structurally inconsistent with the seat audit.
# Romanian parliamentary mandates are allocated at the circumscription level,
# so this election is excluded here.

dta <-
  dta |>
  filter(id != 1742)
