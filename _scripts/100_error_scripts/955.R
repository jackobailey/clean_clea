
# Sri Lanka, (March 1960)

# Despite having different symbols associated with different parties as names,
# all parties in Sri Lanka have the same pty code (3999). I will replace them
# with unique codes.

dta$pty[dta$id == 955] <-
  match(
    dta$pty_n[dta$id == 955],
    unique(dta$pty_n[dta$id == 955])
  )
