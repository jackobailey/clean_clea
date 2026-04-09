
# Australia (November, 1958)

# The adelaide seat is split across multiple cst values. Given its alphabetical
# ordering, I will assume that cst == 1 is correct.

dta$cst[
  dta$id == 747 &
    dta$cst_n == "adelaide"
] <- 1


# The australian capital territory seat is split across two cst values. cst == 3
# is the first, so I assume that is correct. The entry for the independent
# candidate also has various errors, which I will fix.
#
# https://en.wikipedia.org/wiki/1958_Australian_House_of_Representatives_election

dta$cst[
  dta$id == 747 &
    dta$cst_n == "australian capital territory"
] <- 3

dta$cst[
  dta$id == 747 &
    dta$can == "philip day"
] <- 3

dta$cst_n[
  dta$id == 747 &
    dta$cst == 3
] <- "australian capital territory"


# The wimmera seat is split across multiple cst values. Given cst == 126 comes
# first, I will assume that is correct.

dta$cst[
  dta$id == 747 &
    dta$cst_n == "wimmera"
] <- 126
