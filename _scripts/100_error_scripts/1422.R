
# India (December, 1984)

# India had two districts named "aurangabad", "hamirpur", and
# "maharajganj". To distinguish them, I will append their respective states.

# aurangabad

dta$cst_n[
  dta$id == 1422 &
    dta$cst == 35
] <-
  paste0(
    dta$cst_n[
      dta$id == 1422 &
        dta$cst == 35
    ],
    " (",
    dta$sub[
      dta$id == 1422 &
        dta$cst == 35
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1422 &
    dta$cst == 36
] <-
  paste0(
    dta$cst_n[
      dta$id == 1422 &
        dta$cst == 36
    ],
    " (",
    dta$sub[
      dta$id == 1422 &
        dta$cst == 36
    ],
    ")"
  )


# hamirpur

dta$cst_n[
  dta$id == 1422 &
    dta$cst == 202
] <-
  paste0(
    dta$cst_n[
      dta$id == 1422 &
        dta$cst == 202
    ],
    " (",
    dta$sub[
      dta$id == 1422 &
        dta$cst == 202
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1422 &
    dta$cst == 203
] <-
  paste0(
    dta$cst_n[
      dta$id == 1422 &
        dta$cst == 203
    ],
    " (",
    dta$sub[
      dta$id == 1422 &
        dta$cst == 203
    ],
    ")"
  )


# maharajganj

dta$cst_n[
  dta$id == 1422 &
    dta$cst == 311
] <-
  paste0(
    dta$cst_n[
      dta$id == 1422 &
        dta$cst == 311
    ],
    " (",
    dta$sub[
      dta$id == 1422 &
        dta$cst == 311
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1422 &
    dta$cst == 312
] <-
  paste0(
    dta$cst_n[
      dta$id == 1422 &
        dta$cst == 312
    ],
    " (",
    dta$sub[
      dta$id == 1422 &
        dta$cst == 312
    ],
    ")"
  )


# These three single-member constituencies are missing seat allocations in the
# archive, so I will impute the FPTP winners from the largest party vote share.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1422,
    csts = c(36, 203, 312),
    votes = "pv1"
  )
