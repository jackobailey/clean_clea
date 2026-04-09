
# Papua New Guinea (July, 1987)

# The district magnitude in Mendi Open was 1, not missing (-990).
# https://parliament.gov.pg/images/misc/PNG-CONSTITUTION.pdf

dta$mag[
  dta$id == 1989 &
    dta$cst == 61
] <- 1

# The district magnitude in Moresby South Open was 1, not missing (-990).
# https://parliament.gov.pg/images/misc/PNG-CONSTITUTION.pdf

dta$mag[
  dta$id == 1989 &
    dta$cst == 68
] <- 1
