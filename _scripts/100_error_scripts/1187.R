
# El Salvador, (March 2003)

# In 14 constituencies, all seats are already allocated to winners, but 86
# losing parties are still coded as seat == -990 and none are coded as 0. This
# looks like non-seat winners were coded as missing.

dta$seat[
  dta$id == 1187 &
    dta$seat == -990
] <- 0
