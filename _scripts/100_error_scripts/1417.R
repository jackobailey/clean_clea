
# India (February, 1962)

# India had two districts named "aurangabad", "maharajganj", and "shahabad". To
# distinguish them, I will append their respective states.

# aurangabad

dta$cst_n[
  dta$id == 1417 &
    dta$cst == 26
] <-
  paste0(
    dta$cst_n[
      dta$id == 1417 &
        dta$cst == 26
    ],
    " (",
    dta$sub[
      dta$id == 1417 &
        dta$cst == 26
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1417 &
    dta$cst == 27
] <-
  paste0(
    dta$cst_n[
      dta$id == 1417 &
        dta$cst == 27
    ],
    " (",
    dta$sub[
      dta$id == 1417 &
        dta$cst == 27
    ],
    ")"
  )


# maharajganj

dta$cst_n[
  dta$id == 1417 &
    dta$cst == 290
] <-
  paste0(
    dta$cst_n[
      dta$id == 1417 &
        dta$cst == 290
    ],
    " (",
    dta$sub[
      dta$id == 1417 &
        dta$cst == 290
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1417 &
    dta$cst == 291
] <-
  paste0(
    dta$cst_n[
      dta$id == 1417 &
        dta$cst == 291
    ],
    " (",
    dta$sub[
      dta$id == 1417 &
        dta$cst == 291
    ],
    ")"
  )


# shahabad

dta$cst_n[
  dta$id == 1417 &
    dta$cst == 430
] <-
  paste0(
    dta$cst_n[
      dta$id == 1417 &
        dta$cst == 430
    ],
    " (",
    dta$sub[
      dta$id == 1417 &
        dta$cst == 430
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1417 &
    dta$cst == 431
] <-
  paste0(
    dta$cst_n[
      dta$id == 1417 &
        dta$cst == 431
    ],
    " (",
    dta$sub[
      dta$id == 1417 &
        dta$cst == 431
    ],
    ")"
  )


# These three single-member constituencies are missing seat allocations in the
# archive, so I will impute the FPTP winners from the largest party vote share.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1417,
    csts = c(26, 290, 431),
    votes = "pv1"
  )
