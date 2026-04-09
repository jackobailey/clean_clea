
# India (April, 2009)

# India had two districts named "aurangabad", "hamirpur", and
# "maharajganj". To distinguish them, I will append their respective states.

# aurangabad

dta$cst_n[
  dta$id == 1429 &
    dta$cst == 42
] <-
  paste0(
    dta$cst_n[
      dta$id == 1429 &
        dta$cst == 42
    ],
    " (",
    dta$sub[
      dta$id == 1429 &
        dta$cst == 42
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1429 &
    dta$cst == 43
] <-
  paste0(
    dta$cst_n[
      dta$id == 1429 &
        dta$cst == 43
    ],
    " (",
    dta$sub[
      dta$id == 1429 &
        dta$cst == 43
    ],
    ")"
  )


# hamirpur

dta$cst_n[
  dta$id == 1429 &
    dta$cst == 204
] <-
  paste0(
    dta$cst_n[
      dta$id == 1429 &
        dta$cst == 204
    ],
    " (",
    dta$sub[
      dta$id == 1429 &
        dta$cst == 204
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1429 &
    dta$cst == 205
] <-
  paste0(
    dta$cst_n[
      dta$id == 1429 &
        dta$cst == 205
    ],
    " (",
    dta$sub[
      dta$id == 1429 &
        dta$cst == 205
    ],
    ")"
  )


# maharajganj

dta$cst_n[
  dta$id == 1429 &
    dta$cst == 325
] <-
  paste0(
    dta$cst_n[
      dta$id == 1429 &
        dta$cst == 325
    ],
    " (",
    dta$sub[
      dta$id == 1429 &
        dta$cst == 325
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1429 &
    dta$cst == 326
] <-
  paste0(
    dta$cst_n[
      dta$id == 1429 &
        dta$cst == 326
    ],
    " (",
    dta$sub[
      dta$id == 1429 &
        dta$cst == 326
    ],
    ")"
  )


# These three single-member constituencies are missing seat allocations in the
# archive, so I will impute the FPTP winners from the largest party vote share.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1429,
    csts = c(43, 205, 325),
    votes = "pv1"
  )
