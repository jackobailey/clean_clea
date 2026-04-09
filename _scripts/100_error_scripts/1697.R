
# Bosnia and Herzegovina, (October 2002)

# "savez nezavisnih socijaldemokrata" appears as "savez nezavisnih
# socijaldemokrata", "Savez nezavisnih socijaldemokrata", and "Savez Nezavisnih
# Socijaldemokrata" and is coded as pty == 18 and pty == 63 in this election.
# I use "savez nezavisnih socijaldemokrata" and pty == 18.

dta$pty_n[
  dta$id == 1697 &
    dta$pty_n %in% c(
      "savez nezavisnih socijaldemokrata",
      "Savez nezavisnih socijaldemokrata",
      "Savez Nezavisnih Socijaldemokrata"
      )
] <- "savez nezavisnih socijaldemokrata"

dta$pty[
  dta$id == 1697 &
    dta$pty_n == "savez nezavisnih socijaldemokrata"
] <- 18


# The "socijalisticka partija" appears as "socijalisticka partija" and
# "Socijalistička Partija" and is coded as pty == 21 and pty == 5033 in this
# election. I use "socijalisticka partija" and pty == 21.

dta$pty_n[
  dta$id == 1697 &
    dta$pty_n %in% c(
      "socijalisticka partija",
      "Socijalistička Partija"
    )
] <- "savez nezavisnih socijaldemokrata"

dta$pty[
  dta$id == 1697 &
    dta$pty_n == "socijalisticka partija"
] <- 21
