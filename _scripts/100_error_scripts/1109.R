
# United States (November, 2010)

# https://en.wikipedia.org/wiki/2010_United_States_House_of_Representatives_elections_in_Texas#District_27
#
# The republican won in texas 27

dta$seat[
  dta$id == 1109 &
    dta$cst == 394 &
    dta$pty == 583
] <- 1


# In New York 13, Michael G. Grimm won the seat

dta$seat[
  dta$id == 1109 &
    dta$cst == 272 &
    dta$pty == 180
] <- 0

dta$seat[
  dta$id == 1109 &
    dta$cst == 272 &
    dta$pty == 583
] <- 1


# In New York 19, Nan Hayworth won the seat

dta$seat[
  dta$id == 1109 &
    dta$cst == 278 &
    dta$pty == 180
] <- 0

dta$seat[
  dta$id == 1109 &
    dta$cst == 278 &
    dta$pty == 583
] <- 1


# In New York 24, Richard L. Hanna won the seat

dta$seat[
  dta$id == 1109 &
    dta$cst == 283 &
    dta$pty == 180
] <- 0

dta$seat[
  dta$id == 1109 &
    dta$cst == 283 &
    dta$pty == 583
] <- 1


# In New York 25, Ann Marie Buerkle won the seat

dta$seat[
  dta$id == 1109 &
    dta$cst == 284 &
    dta$pty == 180
] <- 0

dta$seat[
  dta$id == 1109 &
    dta$cst == 284 &
    dta$pty == 583
] <- 1
