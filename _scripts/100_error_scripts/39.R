
# Dominican Republic (May 2006)

# In 47 constituencies, all seats are already allocated to winners, but 788
# losing parties are still coded as seat == -990 and none are coded as 0. This
# looks like non-seat winners were coded as missing.

dta$seat[
  dta$id == 39 &
    dta$seat > 0
] <- 0
