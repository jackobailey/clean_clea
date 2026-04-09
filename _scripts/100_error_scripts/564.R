
# Singapore (December, 1980)

# In tiong bahru grc, the people's action party won all 3 seat
#
# https://en.wikipedia.org/wiki/Kuo_Chuan_Constituency#Elections_in_1980s
# https://www.eld.gov.sg/elections_past_parliamentary1980.html#K

# In cst == 45 (kuo chuan), the barisan sosialis candidate won 3925 votes

dta$pv1[
  dta$id == 564 &
    dta$cst == 45 &
    dta$pty == 8
] <- 3925
