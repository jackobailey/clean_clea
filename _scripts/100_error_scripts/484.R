
# Mexico (August, 1994)

# The Cuarta Circunscripcíon is split across two cst values but should be 901

dta$cst[
  dta$id == 484 &
    dta$cst_n == "Cuarta Circunscripcíon"
] <- 901


# Seat counts and district magnitudes are missing. I'm quite sure that these are
# available, but I'm not going to collect them so will drop this election.

dta <-
  dta |>
  filter(id != 484)
