
# Myanmar (November, 2010)

# Data from:
#
# https://en.wikipedia.org/wiki/2010_Myanmar_general_election

# There are two constituencies called Htantabin and Minhla. I will append the
# regions to these names to make them easier to distinguish.

dta$cst_n[
  dta$id == 1738 &
    dta$cst %in% c(57, 58, 152, 153)
] <-
  paste0(
    dta$cst_n[
      dta$id == 1738 &
        dta$cst %in% c(57, 58, 152, 153)
    ],
    " (",
    dta$sub[
      dta$id == 1738 &
        dta$cst %in% c(57, 58, 152, 153)
    ],
    ")"
  )


# In Okpho, the Union Solidarity and Development Party candidate won 36,970
# votes and not 6,970.

dta$pv1[
  dta$id == 1738 &
    dta$cst == 210 &
    dta$pty == 82
] <- 36970

dta$cv1[
  dta$id == 1738 &
    dta$cst == 210 &
    dta$pty == 82
] <- 36970
