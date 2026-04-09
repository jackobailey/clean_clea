
# Sri Lanka, (July 1977)

# Despite having different symbols associated with different parties as names,
# all parties in Sri Lanka have the same pty code (3999). I will replace them
# with unique codes.

dta$pty[dta$id == 959] <-
  match(
    dta$pty_n[dta$id == 959],
    unique(dta$pty_n[dta$id == 959])
  )
