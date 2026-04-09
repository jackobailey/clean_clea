
# Hungary, (May 1994)

# In 20 constituencies, all seats are already allocated to winners, but 139
# losing parties are still coded as seat == -990 while only 41 are coded as 0.
# This looks like many non-seat winners were coded as missing.

dta$seat[
  dta$id == 48 &
    dta$seat == -990
] <- 0
