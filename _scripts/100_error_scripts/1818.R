
# Pakistan, (May 2013)

# "pakistan tehreek-e-insaf" appears as "Pakistan Tehreek-e-insaf" and "Pakistan
# Tehreek-e-Insaf" and is coded as pty == 64 and pty == 65 in this election. I
# will rename it "pakistan tehreek-e-insaf" and use pty == 64.

dta$pty_n[
  dta$id == 1818 &
    dta$pty_n %in% c(
      "pakistan tehreek-e-insaf",
      "Pakistan Tehreek-e-insaf",
      "Pakistan Tehreek-e-Insaf"
    )
] <- "pakistan tehreek-e-insaf"

dta$pty[
  dta$id == 1818 &
    dta$pty_n == "pakistan tehreek-e-insaf"
] <- 65


# Pakistan's reserved seats for women and non-Muslims sit at cst == 273-277 in
# this election, but these are upper-tier seats and should be 900+.

dta$cst[
  dta$id == 1818 &
    dta$cst %in% c(273, 274, 275, 276, 277)
] <-
  match(
    dta$cst[dta$id == 1818 & dta$cst %in% c(273, 274, 275, 276, 277)],
    unique(dta$cst[dta$id == 1818 & dta$cst %in% c(273, 274, 275, 276, 277)])
  ) + 900
