
# South Africa (August, 1984)

# Data from:
#
# https://archive.gazettes.africa/archive/za/1984/za-government-gazette-dated-1984-09-07-no-9417.pdf

# In Bosmont, there was a tie and, rather than appoint the seat at random, there
# was a by election. I will remove this seat since it wasn't filled at the
# election.
#
# https://journals.co.za/doi/pdf/10.10520/AJA0259188X_1329

dta <-
  dta |>
  filter(!(id == 1823 & cst == 11))


# In Grassy Park, J van der Heever was a Labour candidate

dta$pty[
  dta$id == 1823 &
    dta$cst == 26 &
    dta$can == "J van der Heever"
] <- 73

dta$pty_n[
  dta$id == 1823 &
    dta$cst == 26 &
    dta$can == "J van der Heever"
] <- "Labour Party"


# In House of Representatives - Northereastern Cape, the Labour Party won.

dta$seat[
  dta$id == 1823 &
    dta$cst == 49 &
    dta$pty == 83
] <- 0

dta$seat[
  dta$id == 1823 &
    dta$cst == 49 &
    dta$pty == 73
] <- 1
