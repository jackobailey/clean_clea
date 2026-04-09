
# Czech Republic, (July 2002)

# In 14 constituencies, all seats are already allocated to winners, but 257
# losing parties are still coded as seat == -990 while only 1 are coded as 0.
# This still looks like many non-seat winners were coded as missing.

dta$seat[
  dta$id == 165 &
    dta$seat == -990
] <- 0
