
# Guatemala, (September 2015)

# Parties appear to have different codes in the at large district. This is very
# difficult, since the codes also overlap. As such, I will reallocate all of the
# parties. Note that there are no independent candidates.

dta$pty[
  dta$id == 1718
] <-
  match(
    dta$pty_n[dta$id == 1718],
    unique(dta$pty_n[dta$id == 1718])
  )

# Guatemala has a country-wide upper tier; set that tier to cst == 901.

dta$cst[
  dta$id == 1718 &
    dta$cst_n %in% c("Guatemala", "guatemala", "GUATEMALA")
] <- 901

