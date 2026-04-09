
# Russian Federation, (September 2016)

# Code pty == 19 is used for "Russian United Democratic Party (Yabloko)" and
# "Yabloko" in this election. For the sake of consistency, I use the latter.

dta$pty_n[
  dta$id == 1866 &
    dta$pty == 19
] <- "Yabloko"


# cst == 37 is labelled "Federal District".
#
# In Russian election terminology, "federal electoral district"
# ("федеральный избирательный округ") is the nationwide party-list tier, not an
# ordinary single-member constituency. This election already has cst == 901
# labelled "National District", so the sub-900 "Federal District" entry looks
# like a split or mistranslation of the same upper-tier unit.
#
# Because the nationwide list tier should be 900+, cst == 37 appears
# inconsistent.

dta$cst[
  dta$id == 1866 &
    dta$cst == 37
] <- 902
