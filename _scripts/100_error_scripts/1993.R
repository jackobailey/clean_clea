
# Papua New Guinea (July, 2017)

# The district magnitude in Central Bougainville Open was 1, not missing (-990).
# https://parliament.gov.pg/images/misc/PNG-CONSTITUTION.pdf

dta$mag[
  dta$id == 1993 &
    dta$cst == 11
] <- 1

# The district magnitude in Henganofi Open was 1, not missing (-990).
# https://parliament.gov.pg/images/misc/PNG-CONSTITUTION.pdf

dta$mag[
  dta$id == 1993 &
    dta$cst == 30
] <- 1
