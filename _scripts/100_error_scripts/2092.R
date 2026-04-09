
# Switzerland, (November 2019)

# Code pty == 11 is used for 30 distinct labels in this election. I replace them
# with "Grüne" for the sake of consistency.

dta$pty_n[
  dta$id == 2092 &
    dta$pty == 11
] <- "Grüne"


# Code pty == 32 is used for 80 distinct labels in this election. I replace them
# with CVP for the sake of consistency.

dta$pty_n[
  dta$id == 2092 &
    dta$pty == 32
] <- "CVP"


# Code pty == 33 is used for 20 distinct labels in this election. I replace them
# with "EVP" for the sake of consistency.

dta$pty_n[
  dta$id == 2092 &
    dta$pty == 33
] <- "EVP"


# Code pty == 36 is used for 70 distinct labels in this election. I replace them
# with "SVP" for the sake of consistency.

dta$pty_n[
  dta$id == 2092 &
    dta$pty == 36
] <- "SVP"


# Code pty == 37 is used for 70 distinct labels in this election. I replace them
# with "Jeunesse Socialiste" for the sake of consistency.

dta$pty_n[
  dta$id == 2092 &
    dta$pty == 37
] <- "Jeunesse Socialiste"


# Code pty == 47 is used for 40 distinct labels in this election. I replace them
# with "GLP" for the sake of consistency.

dta$pty_n[
  dta$id == 2092 &
    dta$pty == 47
] <- "GLP"


# Code pty == 50 is used for 21 distinct labels in this election. I replace them
# with BDP for the sake of consistency.

dta$pty_n[
  dta$id == 2092 &
    dta$pty == 50
] <- "BDP"
