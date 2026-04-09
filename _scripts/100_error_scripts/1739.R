# Myanmar (November, 2015)

# Data from:
#
# https://en.wikipedia.org/wiki/2015_Myanmar_general_election

# In Kyauktaga, the National League for Democracy won, not the National
# Democratic Force.

dta$seat[
  dta$id == 1739 &
    dta$cst == 103 &
    dta$pty == 46
] <- 0

dta$seat[
  dta$id == 1739 &
    dta$cst == 103 &
    dta$pty == 49
] <- 1


# In Hpapun, the Union Solidarity and Development Party won, not the National
# League for Democracy.

dta$seat[
  dta$id == 1739 &
    dta$cst == 56 &
    dta$pty == 49
] <- 0

dta$seat[
  dta$id == 1739 &
    dta$cst == 56 &
    dta$pty == 82
] <- 1


# In Momauk, the National League for Democracy won, not the Union Solidarity
# and Development Party.

dta$seat[
  dta$id == 1739 &
    dta$cst == 160 &
    dta$pty == 82
] <- 0

dta$seat[
  dta$id == 1739 &
    dta$cst == 160 &
    dta$pty == 49
] <- 1
