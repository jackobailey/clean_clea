
# Lesotho (March 1993)

# Data from:
#
# https://www.electionpassport.com
# https://www.jstor.org/stable/4006193?seq=4

# In cst == 4, Gilbert R Ramolahloane appears to have been added twice. This is
# also present in the election passport data. The journal linked above says that
# the Basotho Congress Party won all the seats, so I will assume that the BNP
# row is incorrect.

dta <-
  dta |>
  filter(!(id == 1221 & can == "Gilbert R Ramolahloane" & pty == 8))


# The journal linked above says that the BCP won all the seats, so we can impute
# the results reliably in this case

dta$seat[dta$id == 1221] <- 0

dta$seat[
  dta$id == 1221 &
    dta$pty == 6
] <- 1
