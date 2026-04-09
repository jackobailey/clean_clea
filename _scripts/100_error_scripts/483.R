
# Mexico (August, 1991)

# Data from:
#
# https://sidof.segob.gob.mx/notas/docFuente/4748643

# Write-ins for the Tercera Circunscripcíon have been given cst == 906 instead
# of cst == 905 like the rest of the district

dta$cst[
  dta$id == 483 &
    dta$cst_n == "Tercera Circunscripcíon"
] <- 905


# Seat counts and district magnitudes are missing. I'm quite sure that these are
# available, but I'm not going to collect them so will drop this election.

dta <-
  dta |>
  filter(id != 483)
