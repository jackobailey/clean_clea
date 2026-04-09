
# India (February, 1967)

# India had two districts named "aurangabad", "hamirpur", "maharajganj", and
# "shahabad". To distinguish them, I will append their respective states.

# aurangabad

dta$cst_n[
  dta$id == 1418 &
    dta$cst == 32
] <-
  paste0(
    dta$cst_n[
      dta$id == 1418 &
        dta$cst == 32
    ],
    " (",
    dta$sub[
      dta$id == 1418 &
        dta$cst == 32
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1418 &
    dta$cst == 33
] <-
  paste0(
    dta$cst_n[
      dta$id == 1418 &
        dta$cst == 33
    ],
    " (",
    dta$sub[
      dta$id == 1418 &
        dta$cst == 33
    ],
    ")"
  )


# hamirpur

dta$cst_n[
  dta$id == 1418 &
    dta$cst == 201
] <-
  paste0(
    dta$cst_n[
      dta$id == 1418 &
        dta$cst == 201
    ],
    " (",
    dta$sub[
      dta$id == 1418 &
        dta$cst == 201
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1418 &
    dta$cst == 202
] <-
  paste0(
    dta$cst_n[
      dta$id == 1418 &
        dta$cst == 202
    ],
    " (",
    dta$sub[
      dta$id == 1418 &
        dta$cst == 202
    ],
    ")"
  )


# maharajganj

dta$cst_n[
  dta$id == 1418 &
    dta$cst == 317
] <-
  paste0(
    dta$cst_n[
      dta$id == 1418 &
        dta$cst == 317
    ],
    " (",
    dta$sub[
      dta$id == 1418 &
        dta$cst == 317
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1418 &
    dta$cst == 318
] <-
  paste0(
    dta$cst_n[
      dta$id == 1418 &
        dta$cst == 318
    ],
    " (",
    dta$sub[
      dta$id == 1418 &
        dta$cst == 318
    ],
    ")"
  )

# shahabad

dta$cst_n[
  dta$id == 1418 &
    dta$cst == 456
] <-
  paste0(
    dta$cst_n[
      dta$id == 1418 &
        dta$cst == 456
    ],
    " (",
    dta$sub[
      dta$id == 1418 &
        dta$cst == 456
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1418 &
    dta$cst == 457
] <-
  paste0(
    dta$cst_n[
      dta$id == 1418 &
        dta$cst == 457
    ],
    " (",
    dta$sub[
      dta$id == 1418 &
        dta$cst == 457
    ],
    ")"
  )


# These four single-member constituencies are missing seat allocations in the
# archive, so I will impute the FPTP winners from the largest party vote share.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1418,
    csts = c(32, 201, 318, 457),
    votes = "pv1"
  )
