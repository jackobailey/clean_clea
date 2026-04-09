
# Malaysia, (April 2018)

# The "Alliance of Hope" is coded as pty == 6 and pty == 11 in this election. It
# also has various names. I'll replace all with "Alliance of Hope" and pty == 6.

dta$pty_n[
  dta$id == 1813 &
    str_detect(dta$pty_n, "Alliance of Hope")
] <- "Alliance of Hope"

dta$pty[
  dta$id == 1813 &
    dta$pty_n == "Alliance of Hope"
] <- 6


# The label "Malaysian People's Party (PRM)" is coded as both pty == 17 and 31
# in this election. I use pty == 17.

dta$pty[
  dta$id == 1813 &
    dta$pty_n == "Malaysian People's Party (PRM)"
] <- 17
