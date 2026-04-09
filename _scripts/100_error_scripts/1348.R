# Zimbabwe (March, 2008)

# Data from:
#
# https://web.archive.org/web/20080606183856/http://www.kubatana.net/html/archive/elec/080329kub.asp?sector=ELEC&year=0&range_start=1
#
# In Gwanda South, Pelandaba Mpopoma, and Redcliff, a candidate died so the
# elections were not held.

dta <-
  dta |>
  filter(
    !(id == 1348 & cst == 74),
    !(id == 1348 & cst == 175),
    !(id == 1348 & cst == 177)
  )


# In Muzarabani South, the candidate ran unopposed.

dta$mag[
  dta$id == 1348 &
    dta$cst == 164
] <- 1

dta$pv1[
  dta$id == 1348 &
    dta$cst == 164
] <- -992

dta$cv1[
  dta$id == 1348 &
    dta$cst == 164
] <- -992

dta$seat[
  dta$id == 1348 &
    dta$cst == 164
] <- 1
