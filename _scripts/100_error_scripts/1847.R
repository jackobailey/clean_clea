
# Dominica, (December 2009)

# Appendix II gives Dominica no country-specific low code for independents, so
# the label "Independent" under pty == 3001-3002 looks inconsistent with the
# codebook's 6001+ convention for individual independents.

dta$pty[
  dta$id == 1847 &
    dta$pty_n == "Independent"
] <-
  dta$pty[
    dta$id == 1847 &
      dta$pty_n == "Independent"
  ] + 3000
