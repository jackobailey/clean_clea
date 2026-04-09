# Sri Lanka (April, 2010)

# Data from:
#
# https://elections.gov.lk/web/wp-content/uploads/election-results/parliamentary-elections/general-election-2010.pdf

# In Anuradhapura, United People's Freedom Alliance won 7 seats, United
# National Party won 2, Democratic National Alliance won none, and the
# magnitude was 9.

dta$mag[
  dta$id == 965 &
    dta$cst == 1
] <- 9

dta$seat[
  dta$id == 965 &
    dta$cst == 1 &
    dta$pty == 5005
] <- 7

dta$seat[
  dta$id == 965 &
    dta$cst == 1 &
    dta$pty == 57
] <- 2

dta$seat[
  dta$id == 965 &
    dta$cst == 1 &
    dta$pty == 5001
] <- 0


# In Galle, United People's Freedom Alliance won 7 seats, United National
# Party won 2, and the magnitude was 10.

dta$mag[
  dta$id == 965 &
    dta$cst == 6
] <- 10

dta$seat[
  dta$id == 965 &
    dta$cst == 6 &
    dta$pty == 5005
] <- 7

dta$seat[
  dta$id == 965 &
    dta$cst == 6 &
    dta$pty == 57
] <- 2


# In Gampaha, United People's Freedom Alliance won 12 seats, United National
# Party won 5, and the magnitude was 18.

dta$mag[
  dta$id == 965 &
    dta$cst == 7
] <- 18

dta$seat[
  dta$id == 965 &
    dta$cst == 7 &
    dta$pty == 5005
] <- 12

dta$seat[
  dta$id == 965 &
    dta$cst == 7 &
    dta$pty == 57
] <- 5


# In Hambantota, United People's Freedom Alliance won 5 seats, United National
# Party won 2, Democratic National Alliance won none, and the magnitude was 7.

dta$mag[
  dta$id == 965 &
    dta$cst == 8
] <- 7

dta$seat[
  dta$id == 965 &
    dta$cst == 8 &
    dta$pty == 5005
] <- 5

dta$seat[
  dta$id == 965 &
    dta$cst == 8 &
    dta$pty == 57
] <- 2

dta$seat[
  dta$id == 965 &
    dta$cst == 8 &
    dta$pty == 5001
] <- 0


# In Kalutara, United People's Freedom Alliance won 7 seats, United National
# Party won 2, and the magnitude was 10.

dta$mag[
  dta$id == 965 &
    dta$cst == 10
] <- 10

dta$seat[
  dta$id == 965 &
    dta$cst == 10 &
    dta$pty == 5005
] <- 7

dta$seat[
  dta$id == 965 &
    dta$cst == 10 &
    dta$pty == 57
] <- 2


# In Kegalle, United People's Freedom Alliance won 7 seats, United National
# Party won 2, Democratic National Alliance won none, and the magnitude was 9.

dta$mag[
  dta$id == 965 &
    dta$cst == 11
] <- 9

dta$seat[
  dta$id == 965 &
    dta$cst == 11 &
    dta$pty == 5005
] <- 7

dta$seat[
  dta$id == 965 &
    dta$cst == 11 &
    dta$pty == 57
] <- 2

dta$seat[
  dta$id == 965 &
    dta$cst == 11 &
    dta$pty == 5001
] <- 0


# In Kurunegala, United People's Freedom Alliance won 10 seats, United
# National Party won 5, Democratic National Alliance won none, and the
# magnitude was 15.

dta$mag[
  dta$id == 965 &
    dta$cst == 12
] <- 15

dta$seat[
  dta$id == 965 &
    dta$cst == 12 &
    dta$pty == 5005
] <- 10

dta$seat[
  dta$id == 965 &
    dta$cst == 12 &
    dta$pty == 57
] <- 5

dta$seat[
  dta$id == 965 &
    dta$cst == 12 &
    dta$pty == 5001
] <- 0


# In Mahanuwara (Kandy), United People's Freedom Alliance won 8 seats, United
# National Party won 4, Democratic National Alliance won none, and the
# magnitude was 12.

dta$mag[
  dta$id == 965 &
    dta$cst == 13
] <- 12

dta$seat[
  dta$id == 965 &
    dta$cst == 13 &
    dta$pty == 5005
] <- 8

dta$seat[
  dta$id == 965 &
    dta$cst == 13 &
    dta$pty == 57
] <- 4

dta$seat[
  dta$id == 965 &
    dta$cst == 13 &
    dta$pty == 5001
] <- 0


# In Matale, United People's Freedom Alliance won 4 seats, United National
# Party won 1, Democratic National Alliance won none, and the magnitude was 5.

dta$mag[
  dta$id == 965 &
    dta$cst == 14
] <- 5

dta$seat[
  dta$id == 965 &
    dta$cst == 14 &
    dta$pty == 5005
] <- 4

dta$seat[
  dta$id == 965 &
    dta$cst == 14 &
    dta$pty == 57
] <- 1

dta$seat[
  dta$id == 965 &
    dta$cst == 14 &
    dta$pty == 5001
] <- 0


# In Matara, United People's Freedom Alliance won 6 seats, United National
# Party won 2, Democratic National Alliance won none, and the magnitude was 8.

dta$mag[
  dta$id == 965 &
    dta$cst == 15
] <- 8

dta$seat[
  dta$id == 965 &
    dta$cst == 15 &
    dta$pty == 5005
] <- 6

dta$seat[
  dta$id == 965 &
    dta$cst == 15 &
    dta$pty == 57
] <- 2

dta$seat[
  dta$id == 965 &
    dta$cst == 15 &
    dta$pty == 5001
] <- 0


# In Moneragala, United People's Freedom Alliance won 4 seats, United National
# Party won 1, Democratic National Alliance won none, and the magnitude was 5.

dta$mag[
  dta$id == 965 &
    dta$cst == 16
] <- 5

dta$seat[
  dta$id == 965 &
    dta$cst == 16 &
    dta$pty == 5005
] <- 4

dta$seat[
  dta$id == 965 &
    dta$cst == 16 &
    dta$pty == 57
] <- 1

dta$seat[
  dta$id == 965 &
    dta$cst == 16 &
    dta$pty == 5001
] <- 0


# In Polonnaruwa, United People's Freedom Alliance won 4 seats, United
# National Party won 1, Democratic National Alliance won none, and the
# magnitude was 5.

dta$mag[
  dta$id == 965 &
    dta$cst == 18
] <- 5

dta$seat[
  dta$id == 965 &
    dta$cst == 18 &
    dta$pty == 5005
] <- 4

dta$seat[
  dta$id == 965 &
    dta$cst == 18 &
    dta$pty == 57
] <- 1

dta$seat[
  dta$id == 965 &
    dta$cst == 18 &
    dta$pty == 5001
] <- 0


# In Puttalam, United People's Freedom Alliance won 6 seats, United National
# Party won 2, Democratic National Alliance won none, and the magnitude was 8.

dta$mag[
  dta$id == 965 &
    dta$cst == 19
] <- 8

dta$seat[
  dta$id == 965 &
    dta$cst == 19 &
    dta$pty == 5005
] <- 6

dta$seat[
  dta$id == 965 &
    dta$cst == 19 &
    dta$pty == 57
] <- 2

dta$seat[
  dta$id == 965 &
    dta$cst == 19 &
    dta$pty == 5001
] <- 0


# In Ratnapura, United People's Freedom Alliance won 7 seats, United National
# Party won 3, Democratic National Alliance won none, and the magnitude was
# 10.

dta$mag[
  dta$id == 965 &
    dta$cst == 20
] <- 10

dta$seat[
  dta$id == 965 &
    dta$cst == 20 &
    dta$pty == 5005
] <- 7

dta$seat[
  dta$id == 965 &
    dta$cst == 20 &
    dta$pty == 57
] <- 3

dta$seat[
  dta$id == 965 &
    dta$cst == 20 &
    dta$pty == 5001
] <- 0
