
# India (March, 1977)

# India had two districts named "aurangabad", "hamirpur", and
# "maharajganj". To distinguish them, I will append their respective states.

# aurangabad

dta$cst_n[
  dta$id == 1420 &
    dta$cst == 36
] <-
  paste0(
    dta$cst_n[
      dta$id == 1420 &
        dta$cst == 36
    ],
    " (",
    dta$sub[
      dta$id == 1420 &
        dta$cst == 36
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1420 &
    dta$cst == 37
] <-
  paste0(
    dta$cst_n[
      dta$id == 1420 &
        dta$cst == 37
    ],
    " (",
    dta$sub[
      dta$id == 1420 &
        dta$cst == 37
    ],
    ")"
  )


# hamirpur

dta$cst_n[
  dta$id == 1420 &
    dta$cst == 212
] <-
  paste0(
    dta$cst_n[
      dta$id == 1420 &
        dta$cst == 212
    ],
    " (",
    dta$sub[
      dta$id == 1420 &
        dta$cst == 212
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1420 &
    dta$cst == 213
] <-
  paste0(
    dta$cst_n[
      dta$id == 1420 &
        dta$cst == 213
    ],
    " (",
    dta$sub[
      dta$id == 1420 &
        dta$cst == 213
    ],
    ")"
  )


# maharajganj

dta$cst_n[
  dta$id == 1420 &
    dta$cst == 329
] <-
  paste0(
    dta$cst_n[
      dta$id == 1420 &
        dta$cst == 329
    ],
    " (",
    dta$sub[
      dta$id == 1420 &
        dta$cst == 329
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1420 &
    dta$cst == 330
] <-
  paste0(
    dta$cst_n[
      dta$id == 1420 &
        dta$cst == 330
    ],
    " (",
    dta$sub[
      dta$id == 1420 &
        dta$cst == 330
    ],
    ")"
  )


# These three single-member constituencies are missing seat allocations in the
# archive, so I will impute the FPTP winners from the largest party vote share.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1420,
    csts = c(37, 213, 330),
    votes = "pv1"
  )
