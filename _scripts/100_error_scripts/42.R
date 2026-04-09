
# Gambia (January, 2007)

# Data from:
#
# https://web.archive.org/web/20150507183330/http://www.iec.gm/files/images/NATIONAL_ASSEMBLY_RESULTS_TABLE_FINAL__2007.pdf
# http://psephos.adam-carr.net/countries/g/gambia/gambia2007.txt

# In foni bondali, the seat count for the single candidate should be 1

dta$seat[
  dta$id == 42 &
    dta$cst == 8 &
    dta$pty == 1
] <- 1


# In foni brefet, the seat count for the single candidate should be 1

dta$seat[
  dta$id == 42 &
    dta$cst == 9 &
    dta$pty == 1
] <- 1


# In foni jarrol, the seat count for the single candidate should be 1

dta$seat[
  dta$id == 42 &
    dta$cst == 10 &
    dta$pty == 1
] <- 1


# In foni kansala, the seat count for the single candidate should be 1

dta$seat[
  dta$id == 42 &
    dta$cst == 11 &
    dta$pty == 1
] <- 1


# In kantora, the seat count for the single candidate should be 1

dta$seat[
  dta$id == 42 &
    dta$cst == 20 &
    dta$pty == 1
] <- 1


# Seats are not allocated in the following districts.

dta$seat[
  dta$id == 42 &
    dta$cst == 6 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 12 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 14 &
    dta$pty == 6
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 15 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 16 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 19 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 21 &
    dta$pty == 6
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 22 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 23 &
    dta$pty == 6
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 28 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 30 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 37 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 40 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 41 &
    dta$pty == 1
] <- 1

dta$seat[
  dta$id == 42 &
    dta$cst == 45 &
    dta$pty == 1
] <- 1


# In Jarra Central, the Alliance for Patriotic Reorientation and Construction
# did not win a seat.

dta$seat[
  dta$id == 42 &
    dta$cst == 14 &
    dta$pty == 1
] <- 0
