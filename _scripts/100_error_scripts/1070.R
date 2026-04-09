
# Portugal, (June 2011)

# The "partido comunista dos trabalhadores portugueses" appears as "partido
# comunista dos trabalhadores portugueses" and "Partido Comunista dos
# Trabalhadores Portugueses" and is coded as pty == 3 and pty == 27.

dta$pty_n[
  dta$id == 1070 &
    dta$pty_n == "Partido Comunista dos Trabalhadores Portugueses"
] <- "partido comunista dos trabalhadores portugueses"

dta$pty[
  dta$id == 1070 &
    dta$pty_n == "partido comunista dos trabalhadores portugueses"
] <- 3
