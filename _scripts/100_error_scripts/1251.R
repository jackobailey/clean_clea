
# Malaysia, (May 2013)

# The party code appear messed up at this election. I will reallocate them.

dta$pty[dta$id == 1251] <-
  match(
    dta$pty_n[dta$id == 1251],
    unique(dta$pty_n[dta$id == 1251])
  )

dta$pty[
  dta$id == 1251 &
    dta$pty_n == "Independent"
] <-
  (
    6000 +
      1:length(dta$pty[
        dta$id == 1251 &
          dta$pty_n == "Independent"
      ])
  )
