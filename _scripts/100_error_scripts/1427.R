
# India (September, 1999)

# India had two districts named "aurangabad", "hamirpur", and
# "maharajganj". To distinguish them, I will append their respective states.

# aurangabad

dta$cst_n[
  dta$id == 1427 &
    dta$cst == 36
] <-
  paste0(
    dta$cst_n[
      dta$id == 1427 &
        dta$cst == 36
    ],
    " (",
    dta$sub[
      dta$id == 1427 &
        dta$cst == 36
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1427 &
    dta$cst == 37
] <-
  paste0(
    dta$cst_n[
      dta$id == 1427 &
        dta$cst == 37
    ],
    " (",
    dta$sub[
      dta$id == 1427 &
        dta$cst == 37
    ],
    ")"
  )


# hamirpur

dta$cst_n[
  dta$id == 1427 &
    dta$cst == 207
] <-
  paste0(
    dta$cst_n[
      dta$id == 1427 &
        dta$cst == 207
    ],
    " (",
    dta$sub[
      dta$id == 1427 &
        dta$cst == 207
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1427 &
    dta$cst == 208
] <-
  paste0(
    dta$cst_n[
      dta$id == 1427 &
        dta$cst == 208
    ],
    " (",
    dta$sub[
      dta$id == 1427 &
        dta$cst == 208
    ],
    ")"
  )


# maharajganj

dta$cst_n[
  dta$id == 1427 &
    dta$cst == 324
] <-
  paste0(
    dta$cst_n[
      dta$id == 1427 &
        dta$cst == 324
    ],
    " (",
    dta$sub[
      dta$id == 1427 &
        dta$cst == 324
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1427 &
    dta$cst == 325
] <-
  paste0(
    dta$cst_n[
      dta$id == 1427 &
        dta$cst == 325
    ],
    " (",
    dta$sub[
      dta$id == 1427 &
        dta$cst == 325
    ],
    ")"
  )


# In cst == 208 (hamirpur (uttar pradesh)), bahujan samaj party won

dta$seat[
  dta$id == 1427 &
    dta$cst == 208 &
    dta$pty == 194
] <- 1


# These two single-member constituencies are missing seat allocations in the
# archive, so I will impute the FPTP winners from the largest party vote share.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1427,
    csts = c(36, 325),
    votes = "pv1"
  )
