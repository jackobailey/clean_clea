
# Czech Republic (June 2006)

# In královéhradecký kraj, ceskoslovenská sociální demokracie (pty == 11) won 4
# seats, not 0.
#
# https://en.wikipedia.org/wiki/2006_Czech_parliamentary_election#Vote_share_by_district

dta$seat[
  dta$id == 166 &
    dta$cst == 6 &
    dta$pty == 11
] <- 4
