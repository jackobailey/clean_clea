
# India (May, 1991)

# India had two districts named "aurangabad", "hamirpur", and
# "maharajganj". To distinguish them, I will append their respective states.

# aurangabad

dta$cst_n[
  dta$id == 1424 &
    dta$cst == 34
] <-
  paste0(
    dta$cst_n[
      dta$id == 1424 &
        dta$cst == 34
    ],
    " (",
    dta$sub[
      dta$id == 1424 &
        dta$cst == 34
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1424 &
    dta$cst == 35
] <-
  paste0(
    dta$cst_n[
      dta$id == 1424 &
        dta$cst == 35
    ],
    " (",
    dta$sub[
      dta$id == 1424 &
        dta$cst == 35
    ],
    ")"
  )


# hamirpur

dta$cst_n[
  dta$id == 1424 &
    dta$cst == 206
] <-
  paste0(
    dta$cst_n[
      dta$id == 1424 &
        dta$cst == 206
    ],
    " (",
    dta$sub[
      dta$id == 1424 &
        dta$cst == 206
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1424 &
    dta$cst == 207
] <-
  paste0(
    dta$cst_n[
      dta$id == 1424 &
        dta$cst == 207
    ],
    " (",
    dta$sub[
      dta$id == 1424 &
        dta$cst == 207
    ],
    ")"
  )


# maharajganj

dta$cst_n[
  dta$id == 1424 &
    dta$cst == 318
] <-
  paste0(
    dta$cst_n[
      dta$id == 1424 &
        dta$cst == 318
    ],
    " (",
    dta$sub[
      dta$id == 1424 &
        dta$cst == 318
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1424 &
    dta$cst == 319
] <-
  paste0(
    dta$cst_n[
      dta$id == 1424 &
        dta$cst == 319
    ],
    " (",
    dta$sub[
      dta$id == 1424 &
        dta$cst == 319
    ],
    ")"
  )


# In cst == 34 (aurangabad (bihar)), Janata Dal won

dta$seat[
  dta$id == 1424 &
    dta$cst == 34 &
    dta$pty == 573
] <- 1


# These two single-member constituencies are missing seat allocations in the
# archive, so I will impute the FPTP winners from the largest party vote share.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1424,
    csts = c(207, 319),
    votes = "pv1"
  )
