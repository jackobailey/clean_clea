
# Germany (October 1976)

# The Verden district is scattered across the other districts. This looks to be
# an Excel dragging error since the cst values increase from 29 for Verden. As
# the starting value and only district with a cst of 29, I will assume that is
# the right code.

dta$cst[
  dta$id == 306 &
    dta$cst_n == "Verden"
] <- 29
