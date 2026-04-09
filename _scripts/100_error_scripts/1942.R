
# India (May, 1951)

# Data from:
#
# https://www.eci.gov.in/eci-backend/public/api/download?url=LMAhAK6sOPBp%2FNFF0iRfXbEB1EVSLT41NNLRjYNJJP1KivrUxbfqkDatmHy12e%2FzVx8fLfn2ReU7TfrqYobgIg5j%2FHYFqSqJgJGr0bST3IUhAF9SfDN8Uuc8gj%2BDh4kAfDOTuR4Nkt0ekULalb4eUwj3FEb6QN6V5bMrpRuFg7z8ZJWF%2F1POgiq%2ByICySNyC

# Ram Dhari ran in deoria district (east), not deoria district (south)

dta$cst[
  dta$id == 1942 &
    dta$pty == 1116 &
    dta$can == "ram dhari"
] <- 112

dta$cst_n[
  dta$id == 1942 &
    dta$pty == 1116 &
    dta$can == "ram dhari"
] <- "deoria district (east)"


# Bishwa Nath for the Socialists ran in deoria district (south), not deoria
# district (west)

dta$cst[
  dta$id == 1942 &
    dta$pty == 1116 &
    dta$can == "bishwa nath"
] <- 112

dta$cst_n[
  dta$id == 1942 &
    dta$pty == 1116 &
    dta$can == "bishwa nath"
] <- "deoria district (south)"


# Recode uncontested constituencies as uncontested

dta$pv1[dta$id == 1942 & dta$cst == 67] <- -992
dta$cv1[dta$id == 1942 & dta$cst == 67] <- -992

dta$pv1[dta$id == 1942 & dta$cst == 97] <- -992
dta$cv1[dta$id == 1942 & dta$cst == 97] <- -992

dta$pv1[dta$id == 1942 & dta$cst == 162] <- -992
dta$cv1[dta$id == 1942 & dta$cst == 162] <- -992

dta$pv1[dta$id == 1942 & dta$cst == 321] <- -992
dta$cv1[dta$id == 1942 & dta$cst == 321] <- -992

dta$pv1[dta$id == 1942 & dta$cst == 399] <- -992
dta$cv1[dta$id == 1942 & dta$cst == 399] <- -992


# In cst == 237 (mayuram), fix the seat allocation

dta$seat[dta$id == 1942 & dta$cst == 237 & dta$can == "v. veeraswami"] <- 0
dta$seat[dta$id == 1942 & dta$cst == 237 & dta$can == "k. santhanam"] <- 1


# In cst == 40 (bargarh), ghanshyam das thirani won

dta$seat[
  dta$id == 1942 &
    dta$cst == 40 &
    dta$can == "brajamohan pradhan"
] <- 0

dta$seat[
  dta$id == 1942 &
    dta$cst == 40 &
    dta$can == "ghanshyam das thirani"
] <- 1
