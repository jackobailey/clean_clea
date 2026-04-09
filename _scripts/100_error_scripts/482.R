
# Malawi (May, 2004)

# Data from:
#
# https://mec.org.mw/wp-content/uploads/2018/11/PARLIAMENTARY-SUMMARY-RESULTS-FOR-2004-ELECTIONS.pdf

# In chitipa south, "p.k. mwelekete kalua" won the seat

dta$seat[
  dta$id == 482 &
    dta$cst == 32 &
    dta$can == "p.k. mwelekete kalua"
] <- 1


# In balaka west, weston kanjira withdrew, so can be dropped

dta <-
  dta |>
  filter(
    !(id == 482 & cst == 4 & can == "weston kanjira (withdrawn)")
  )


# In karonga south, kampunga nelson mwafulirwa died, so can be dropped

dta <-
  dta |>
  filter(
    !(id == 482 & cst == 53 & can == "kampunga nelson mwafulirwa(deceased)")
  )


# In mchinji north-east, ackim fredreck kavinya died, so can be dropped

dta <-
  dta |>
  filter(
    !(id == 482 & cst == 107 & can == "ackim fredreck kavinya (deceased)")
  )


# In mzimba west, paul a. chimhoyele thole withdrew, so can be dropped

dta <-
  dta |>
  filter(
    !(id == 482 & cst == 132 & can == "paul a. chimhoyele thole (withdrawn)")
  )


# In ntchisi east, the vote shares are wrong

dta$pv1[
  dta$id == 482 &
    dta$cst == 159 &
    dta$pty == 3
] <- 7146

dta$pv1[
  dta$id == 482 &
    dta$cst == 159 &
    dta$pty == 15
] <- 1512

dta$pv1[
  dta$id == 482 &
    dta$cst == 159 &
    dta$pty == 21
] <- 1219

dta$pv1[
  dta$id == 482 &
    dta$cst == 159 &
    dta$pty == 9
] <- 723


# In Dedza Central-East (cst == 35) and Dedza South-West (cst == 40), the
# Malawi Congress Party won the seat.

dta$seat[
  dta$id == 482 &
    dta$cst == 35 &
    dta$pty == 3
] <- 1

dta$seat[
  dta$id == 482 &
    dta$cst == 40 &
    dta$pty == 3
] <- 1
