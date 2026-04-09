
# Namibia (November, 1989)

# Data from:
#
# https://en.wikipedia.org/wiki/1989_Namibian_parliamentary_election
# https://digitallibrary.un.org/record/101576/files/219253_E.pdf

# The CLEA data group Others into a single party, but there were actually three
# smaller parties instead. I will replace them accordingly.

dta <-
  dta |>
  filter(
    !(
      id == 1651 &
        pty == 4000
    )
  )

dta <-
  dta |>
  add_row(
    release = 10,
    id = 1651,
    rg = "Africa",
    ctr_n = "Namibia",
    ctr = 516,
    yr = 1989,
    mn = 11,
    cst_n = "Namibia",
    cst = 1,
    mag = 72,
    pty_n = "SWAPO Democrats",
    pty = 101,
    pv1 = 3161,
    seat = 0
  ) |>
  add_row(
    release = 10,
    id = 1651,
    rg = "Africa",
    ctr_n = "Namibia",
    ctr = 516,
    yr = 1989,
    mn = 11,
    cst_n = "Namibia",
    cst = 1,
    mag = 72,
    pty_n = "Christian Democratic Action for Social Justice",
    pty = 102,
    pv1 = 2495,
    seat = 0
  ) |>
  add_row(
    release = 10,
    id = 1651,
    rg = "Africa",
    ctr_n = "Namibia",
    ctr = 516,
    yr = 1989,
    mn = 11,
    cst_n = "Namibia",
    cst = 1,
    mag = 72,
    pty_n = "National Democratic Party",
    pty = 103,
    pv1 = 984,
    seat = 0
  )

# As a single nationwide constituency, I will code this as 900+ for my own
# purposes

dta$cst[
  dta$id == 1651 &
    dta$cst == 1
] <- 901
