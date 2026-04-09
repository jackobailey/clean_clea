
# Sri Lanka (August, 1994)

# Data from:
#
# https://elections.gov.lk/web/wp-content/uploads/election-results/parliamentary-elections/general-election-1994.pdf

# In Anuradhapura, People's Alliance won 5 seats, United National Party won 3,
# Sri Lanka Progressive Front won none, and the magnitude was 8.

dta$mag[
  dta$id == 961 &
    dta$cst == 1
] <- 8

dta$seat[
  dta$id == 961 &
    dta$cst == 1 &
    dta$pty == 5004
] <- 5

dta$seat[
  dta$id == 961 &
    dta$cst == 1 &
    dta$pty == 57
] <- 3

dta$seat[
  dta$id == 961 &
    dta$cst == 1 &
    dta$pty == 42
] <- 0


# In Galle, People's Alliance won 6 seats, United National Party won 4, Sri
# Lanka Progressive Front won none, and the magnitude was 10.

dta$mag[
  dta$id == 961 &
    dta$cst == 6
] <- 10

dta$seat[
  dta$id == 961 &
    dta$cst == 6 &
    dta$pty == 5004
] <- 6

dta$seat[
  dta$id == 961 &
    dta$cst == 6 &
    dta$pty == 57
] <- 4

dta$seat[
  dta$id == 961 &
    dta$cst == 6 &
    dta$pty == 42
] <- 0


# In Gampaha, People's Alliance won 11 seats, United National Party won 7, Sri
# Lanka Progressive Front won none, and the magnitude was 18.

dta$mag[
  dta$id == 961 &
    dta$cst == 7
] <- 18

dta$seat[
  dta$id == 961 &
    dta$cst == 7 &
    dta$pty == 5004
] <- 11

dta$seat[
  dta$id == 961 &
    dta$cst == 7 &
    dta$pty == 57
] <- 7

dta$seat[
  dta$id == 961 &
    dta$cst == 7 &
    dta$pty == 42
] <- 0


# In Matara, People's Alliance won 5 seats, United National Party won 3, Sri
# Lanka Progressive Front won none, and the magnitude was 8.

dta$mag[
  dta$id == 961 &
    dta$cst == 15
] <- 8

dta$seat[
  dta$id == 961 &
    dta$cst == 15 &
    dta$pty == 5004
] <- 5

dta$seat[
  dta$id == 961 &
    dta$cst == 15 &
    dta$pty == 57
] <- 3

dta$seat[
  dta$id == 961 &
    dta$cst == 15 &
    dta$pty == 42
] <- 0


# In Puttalam, People's Alliance won 4 seats, United National Party won 3, Sri
# Lanka Progressive Front won none, and the magnitude was 7.

dta$mag[
  dta$id == 961 &
    dta$cst == 19
] <- 7

dta$seat[
  dta$id == 961 &
    dta$cst == 19 &
    dta$pty == 5004
] <- 4

dta$seat[
  dta$id == 961 &
    dta$cst == 19 &
    dta$pty == 57
] <- 3

dta$seat[
  dta$id == 961 &
    dta$cst == 19 &
    dta$pty == 42
] <- 0
