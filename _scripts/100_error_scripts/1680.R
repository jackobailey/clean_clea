# Uganda (February, 2006)

# Data from:
#
# https://www.ec.or.ug/sites/Elec_results/MP%20Special%20Interest%20Groups%202006.pdf

# The data include districts for members of the armed forces and workers that
# did not comprise the districted election, so I remove them.

dta <-
  dta |>
  filter(
    !(
      id == 1680 &
      cst %in% c(290, 291)
    )
  )
