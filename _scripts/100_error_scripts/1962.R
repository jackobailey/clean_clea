
# Malawi, (May 2019)

# Appendix II gives Malawi the 6001- range for individual independents, but the
# label "Independent" appears here under pty == 0. I will renumber all of the
# independents.

dta$pty[
  dta$id == 1962 &
    dta$pty_n == "Independent"
] <-
  match(
    dta$pty[dta$id == 1962 & dta$pty_n == "Independent"],
    unique(dta$pty[dta$id == 1962 & dta$pty_n == "Independent"])
  ) + 6000
