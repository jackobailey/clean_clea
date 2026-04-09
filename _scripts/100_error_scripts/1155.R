# Benin (April, 2011)

# Data from:
#
# https://www.electionpassport.com/files/BJ/BJ.xlsx
# https://www.electionpassport.com/files/BJ/BJ.pdf
#
# Election Passport cites CENA and beninelections.com as its source notes.

# In C9 and C10, the constituency labels were swapped, and the seats need to
# be reallocated accordingly.

dta$cst_n[
  dta$id == 1155 &
    dta$cst == 9
] <- "C10"

dta$cst_n[
  dta$id == 1155 &
    dta$cst == 10
] <- "C9"

dta$seat[
  dta$id == 1155 &
    dta$cst == 9
] <- 0

dta$seat[
  dta$id == 1155 &
    dta$cst == 9 &
    dta$pty == 2
] <- 3

dta$seat[
  dta$id == 1155 &
    dta$cst == 10
] <- 0

dta$seat[
  dta$id == 1155 &
    dta$cst == 10 &
    dta$pty == 2
] <- 1

dta$seat[
  dta$id == 1155 &
    dta$cst == 10 &
    dta$pty == 5029
] <- 1

dta$seat[
  dta$id == 1155 &
    dta$cst == 10 &
    dta$pty == 5006
] <- 1
