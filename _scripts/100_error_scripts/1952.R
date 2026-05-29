
# Kuwait (December, 2020)

# Data from:
#
# https://www.kuna.net.kw/ArticleDetails.aspx?id=2944334&language=en

# In the Fifth Constituency, KUNA lists Hamdan Salem al-Azmi as elected
# with 8,387 votes. Majed Musaed al-Mutairi is not among the ten winners.

dta$seat[
  dta$id == 1952 &
    dta$cst == 5 &
    dta$can == "Hamdan Salem al-Azmi" &
    dta$pty == 6268
] <- 1

dta$seat[
  dta$id == 1952 &
    dta$cst == 5 &
    dta$can == "Majed Musaed al-Mutairi" &
    dta$pty == 6277
] <- 0
