
# Uganda (February, 2016)

# Data from:
#
# https://www.ec.or.ug/sites/default/files/docs/Gazette%20List%20Elected%20MPs%202016.pdf
# https://www.ec.or.ug/election/representatives-people-disabilitiespwd-parliament

# The data include districts for members of the armed forces, workers, and
# persons with disabilities that did not comprise the districted election, so I
# remove them.

dta <-
  dta |>
  filter(
    !(
      id == 1682 &
        cst %in% c(1013, 1014, 1015)
    )
  )


# ABIM (WOMAN) and LWEMIYAGA COUNTY both have cst values of 901. Since all 900+
# values are for women or other groups (or regional districts), I assume that
# LWEMIYAGA COUNTY is incorrect and will set it such that its cst == 290.

dta$cst[
  dta$id == 1682 &
    dta$cst_n == "LWEMIYAGA COUNTY"
] <- 290
