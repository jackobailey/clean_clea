
# Serbia (May, 2012)

# Data from:
#
# https://www.rik.parlament.gov.rs/uploads/documents/izbori-za-narodne-poslanike/rezultati/rezultati.pdf
# https://en.wikipedia.org/wiki/2012_Serbian_parliamentary_election
#
# The electoral results include a party named "None of the Above". This is a
# party label, not a blank-vote or none-of-the-above option, so I make that
# explicit here.

dta$pty[
  dta$id == 1291 &
    dta$pty_n == "None of the Above"
] <- 75

dta$pty_n[
  dta$id == 1291 &
    dta$pty_n == "None of the Above"
] <- "The None of the Above Party"


# As a single nationwide constituency, I will code this as 900+ for my own
# purposes

dta$cst[
  dta$id == 1291 &
    dta$cst == 1
] <- 901
