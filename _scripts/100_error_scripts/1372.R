
# Brazil, (October 2014)

# In 6 constituencies, all seats are already allocated to winners, but 177
# losing parties are still coded as seat == -990 while only 151 are coded as 0.
# This looks like many non-seat winners were coded as missing.

dta$seat[
  dta$id == 1372 &
    dta$seat == -990
] <- 0
