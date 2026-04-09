
# Canada (August, 1953)

# There are two constituencies called "kent". I will rename them to include the
# region to make the distinction clearer.

dta$cst_n[
  dta$id == 790 &
    dta$cst == 95
] <-
  paste0(
    dta$cst_n[
      dta$id == 790 &
        dta$cst == 95
    ],
    " (",
    dta$sub[
      dta$id == 790 &
        dta$cst == 95
    ],
    ")"
  )

dta$cst_n[
  dta$id == 790 &
    dta$cst == 96
] <-
  paste0(
    dta$cst_n[
      dta$id == 790 &
        dta$cst == 96
    ],
    " (",
    dta$sub[
      dta$id == 790 &
        dta$cst == 96
    ],
    ")"
  )


# There are two constituencies called "northumberland". I will rename them to
# include the region to make the distinction clearer.

dta$cst_n[
  dta$id == 790 &
    dta$cst == 143
] <-
  paste0(
    dta$cst_n[
      dta$id == 790 &
        dta$cst == 143
    ],
    " (",
    dta$sub[
      dta$id == 790 &
        dta$cst == 143
    ],
    ")"
  )

dta$cst_n[
  dta$id == 790 &
    dta$cst == 144
] <-
  paste0(
    dta$cst_n[
      dta$id == 790 &
        dta$cst == 144
    ],
    " (",
    dta$sub[
      dta$id == 790 &
        dta$cst == 144
    ],
    ")"
  )


# There are two constituencies called "victoria". I will rename them to include
# the region to make the distinction clearer.

dta$cst_n[
  dta$id == 790 &
    dta$cst == 237
] <-
  paste0(
    dta$cst_n[
      dta$id == 790 &
        dta$cst == 237
    ],
    " (",
    dta$sub[
      dta$id == 790 &
        dta$cst == 237
    ],
    ")"
  )

dta$cst_n[
  dta$id == 790 &
    dta$cst == 238
] <-
  paste0(
    dta$cst_n[
      dta$id == 790 &
        dta$cst == 238
    ],
    " (",
    dta$sub[
      dta$id == 790 &
        dta$cst == 238
    ],
    ")"
  )
