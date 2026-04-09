# Nigeria (March, 2015)

# Data from:
#
# https://www.stears.co/elections/2015/house-of-representatives/JI/
# https://www.stears.co/elections/2015/house-of-representatives/ON/
# https://www.stears.co/elections/2015/house-of-representatives/OS/
# https://inecnigeria.org/wp-content/uploads/2019/02/2015-ELECTED-REPS-MEMB.-1.xlsx

# In Jahun/Miga, the APC won the seat, not the PDP.

dta$seat[
  dta$id == 2074 &
    dta$cst == 205 &
    dta$pty == 28
] <- 0

dta$seat[
  dta$id == 2074 &
    dta$cst == 205 &
    dta$pty == 90
] <- 1


# The original manual script also gives Akoko South East/West to the PDP rather
# than the APC. I preserve that implemented correction here, but the public
# INEC elected-members file and Stears both appear to point the other way, so
# this should be reviewed.

dta$seat[
  dta$id == 2074 &
    dta$cst == 27 &
    dta$pty == 90
] <- 0

dta$seat[
  dta$id == 2074 &
    dta$cst == 27 &
    dta$pty == 28
] <- 1


# In Atakunmosa East/Atakunmosa West/Ilesha West, the original manual script
# includes a duplicate PDP row for Olukayode E. Oduoye. Stears lists
# Olowoofeyeku Ayotunde as the PDP candidate, so I drop the duplicate row and
# preserve the original vote correction. The exact 21,463 vote total remains
# weakly sourced.

dta <-
  dta |>
  filter(
    !(id == 2074 & cst == 48 & can == "OLUKAYODE E. ODUOYE")
  )

dta$pv1[
  dta$id == 2074 &
    dta$cst == 48 &
    dta$can == "OLOWOFEYEKU AYOTUNDE"
] <- 21463
