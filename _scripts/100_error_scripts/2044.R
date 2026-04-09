
# Canada (September, 2021)

# These data appear broken, since the cst values are not consistent across the
# various districts. I don't have the time to fix all of these, so I am going to
# drop this from the data.

dta <-
  dta |>
  filter(id != 2044)
