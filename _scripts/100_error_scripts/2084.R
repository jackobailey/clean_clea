
# Philippines, (May 2016)

# Code pty == 198 is used for "OFW Family Club" and "One Advocacy for Health
# Progress and Opportunity" in this election. I will give the latter pty == 352.

dta$pty[
  dta$id == 2084 &
    dta$pty_n == "One Advocacy for Health Progress and Opportunity"
] <- 352


# Appendix II gives the Philippines the 6001- range for individual independents,
# but this election also has the label "Independent" under pty == 6. I will
# reallocate them all.

dta$pty[
  dta$id == 2084 &
    dta$pty_n == "Independent"
] <-
  match(
    dta$pty[dta$id == 2084 & dta$pty_n == "Independent"],
    unique(dta$pty[dta$id == 2084 & dta$pty_n == "Independent"])
  ) + 6000
