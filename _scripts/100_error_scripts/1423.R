
# India (November, 1989)

# India had two districts named "aurangabad", "hamirpur", and
# "maharajganj". To distinguish them, I will append their respective states.
# https://en.wikipedia.org/wiki/Aurangabad,_Bihar_Lok_Sabha_constituency

# aurangabad

dta$cst_n[
  dta$id == 1423 &
    dta$cst == 36
] <-
  paste0(
    dta$cst_n[
      dta$id == 1423 &
        dta$cst == 36
    ],
    " (",
    dta$sub[
      dta$id == 1423 &
        dta$cst == 36
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1423 &
    dta$cst == 37
] <-
  paste0(
    dta$cst_n[
      dta$id == 1423 &
        dta$cst == 37
    ],
    " (",
    dta$sub[
      dta$id == 1423 &
        dta$cst == 37
    ],
    ")"
  )


# hamirpur

dta$cst_n[
  dta$id == 1423 &
    dta$cst == 208
] <-
  paste0(
    dta$cst_n[
      dta$id == 1423 &
        dta$cst == 208
    ],
    " (",
    dta$sub[
      dta$id == 1423 &
        dta$cst == 208
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1423 &
    dta$cst == 209
] <-
  paste0(
    dta$cst_n[
      dta$id == 1423 &
        dta$cst == 209
    ],
    " (",
    dta$sub[
      dta$id == 1423 &
        dta$cst == 209
    ],
    ")"
  )


# maharajganj

dta$cst_n[
  dta$id == 1423 &
    dta$cst == 320
] <-
  paste0(
    dta$cst_n[
      dta$id == 1423 &
        dta$cst == 320
    ],
    " (",
    dta$sub[
      dta$id == 1423 &
        dta$cst == 320
    ],
    ")"
  )

dta$cst_n[
  dta$id == 1423 &
    dta$cst == 321
] <-
  paste0(
    dta$cst_n[
      dta$id == 1423 &
        dta$cst == 321
    ],
    " (",
    dta$sub[
      dta$id == 1423 &
        dta$cst == 321
    ],
    ")"
  )


# In cst == 36 (aurangabad (bihar)), Janata Dal

dta$seat[
  dta$id == 1423 &
    dta$cst == 36 &
    dta$pty == 573
] <- 1


# These two single-member constituencies are missing seat allocations in the
# archive, so I will impute the FPTP winners from the largest party vote share.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1423,
    csts = c(209, 321),
    votes = "pv1"
  )
