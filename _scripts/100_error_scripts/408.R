
# Italy (May, 1968)

# In Brescia-Bergamo, the südtiroler volkspartei didn't win any seats
#
# https://en.wikipedia.org/wiki/1968_Italian_general_election#Results_by_constituency

dta$seat[
  dta$id == 408 &
    dta$cst == 13 &
    dta$pty == 52
] <- 0


# In Mantova-Cremona, the seat totals are wrong

dta$seat[
  dta$id == 408 &
    dta$cst == 14 &
    dta$pty == 8
] <- 4

dta$seat[
  dta$id == 408 &
    dta$cst == 14 &
    dta$pty == 25
] <- 3

dta$seat[
  dta$id == 408 &
    dta$cst == 14 &
    dta$pty == 50
] <- 2


# The "raggruppamento italico", which appears not to be some "other" group, does
# not have a unique pty value. I will allocate it pty == 466

dta$pty[
  dta$id &
    dta$pty_n == "raggruppamento italico"
] <- 466
