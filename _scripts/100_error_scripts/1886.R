
# Turks and Caicos Islands (December, 2016)

# Election ID: 1886
#
# cst == 1 is labelled "All Island District".
#
# This election also has ten ordinary electoral districts at cst == 2-11. The
# all-island district is the separate at-large tier, so it looks like a special
# upper-tier district that should be coded 900+ rather than 1.
#
# The local legal terminology is explicit: "All Island District" is a distinct
# non-territorial district, not just another ordinary single-member district.

dta$cst[
  dta$id == 1886 &
    dta$cst == 1
] <- 901
