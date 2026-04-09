
# India (March, 1971)

# Data from:
# https://indianexpress.com/article/opinion/columns/multi-member-seats-a-short-lived-experiment-9650435/

# India had two districts named "aurangabad", "hamirpur", "maharajganj", and
# "shahabad". To distinguish them, I will append their respective states.

# aurangabad

dta$cst_n[
  dta$id == 1419 &
    dta$cst == 32
] <-
  paste0(
    dta$cst_n[
      dta$id == 1419 &
        dta$cst == 32
    ],
    " (",
    dta$sub[
      dta$id == 1419 &
        dta$cst == 32
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1419 &
    dta$cst == 33
] <-
  paste0(
    dta$cst_n[
      dta$id == 1419 &
        dta$cst == 33
    ],
    " (",
    dta$sub[
      dta$id == 1419 &
        dta$cst == 33
    ],
    ")"
  )


# hamirpur

dta$cst_n[
  dta$id == 1419 &
    dta$cst == 200
] <-
  paste0(
    dta$cst_n[
      dta$id == 1419 &
        dta$cst == 200
    ],
    " (",
    dta$sub[
      dta$id == 1419 &
        dta$cst == 200
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1419 &
    dta$cst == 201
] <-
  paste0(
    dta$cst_n[
      dta$id == 1419 &
        dta$cst == 201
    ],
    " (",
    dta$sub[
      dta$id == 1419 &
        dta$cst == 201
    ],
    ")"
  )


# maharajganj

dta$cst_n[
  dta$id == 1419 &
    dta$cst == 317
] <-
  paste0(
    dta$cst_n[
      dta$id == 1419 &
        dta$cst == 317
    ],
    " (",
    dta$sub[
      dta$id == 1419 &
        dta$cst == 317
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1419 &
    dta$cst == 318
] <-
  paste0(
    dta$cst_n[
      dta$id == 1419 &
        dta$cst == 318
    ],
    " (",
    dta$sub[
      dta$id == 1419 &
        dta$cst == 318
    ],
    ")"
  )


# shahabad

dta$cst_n[
  dta$id == 1419 &
    dta$cst == 454
] <-
  paste0(
    dta$cst_n[
      dta$id == 1419 &
        dta$cst == 454
    ],
    " (",
    dta$sub[
      dta$id == 1419 &
        dta$cst == 454
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1419 &
    dta$cst == 455
] <-
  paste0(
    dta$cst_n[
      dta$id == 1419 &
        dta$cst == 455
    ],
    " (",
    dta$sub[
      dta$id == 1419 &
        dta$cst == 455
    ],
    ")"
  )


# In cst == 3 (aurangabad (maharashtra)), the indian national congress won

dta$seat[
  dta$id == 1419 &
    dta$cst == 33 &
    dta$pty == 503
] <- 1


# These three single-member constituencies are missing seat allocations in the
# archive, so I will impute the FPTP winners from the largest party vote share.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1419,
    csts = c(201, 318, 455),
    votes = "pv1"
  )
