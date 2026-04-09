
# Venezuela, (December 2015)

# The label "Democratas Aliados De Libre Expresion" is coded as both pty == 70
# and pty == 71 in this election. I'm coding this as 71.

dta$pty[
  dta$id == 2349 &
    dta$pty_n == "Democratas Aliados De Libre Expresion"
] <- 71


# The following cst values are coded below 900 even though the names indicate the
# regional National Assembly tier rather than ordinary state/district
# constituencies.
#
# Language/context:
# - "Asamblea Nacional Region Occidente/Oriente/Sur" explicitly marks regional
#   National Assembly list units.
# - The same election already places the state-level list tier at cst == 901-924,
#   so these three regional list districts sitting at 13-15 look mis-coded.
# - Earlier Venezuela files also code the analogous West/South/East upper-tier
#   units in the 900+ range.
#
# Flagged cases:
# - cst == 13: Asamblea Nacional Region Occidente
# - cst == 14: Asamblea Nacional Region Oriente
# - cst == 15: Asamblea Nacional Region Sur

dta$cst[
  dta$id == 2349 &
    dta$cst %in% 13:14
] <-
  match(
    dta$cst_n[dta$id == 2349 & dta$cst %in% 13:14],
    unique(dta$cst_n[dta$id == 2349 & dta$cst %in% 13:14])
  ) + 924
