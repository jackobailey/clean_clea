
# Russian Federation, (December 1999)

# The party codes appear to be messed up at this election. I will replace them
# but keep 3996 for "Against all" so that I can remove it later.

dta$pty[dta$id == 2319] <-
  match(
    dta$pty_n[dta$id == 2319],
    unique(dta$pty_n[dta$id == 2319])
  )

dta$pty[
  dta$id == 2319 &
    dta$pty_n == "Against all"
] <- 3996
