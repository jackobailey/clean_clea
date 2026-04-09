
# South Africa (September, 1989)

# Data from:
#
# https://en.wikipedia.org/wiki/1989_South_African_general_election

# In Verwoerdburg, the National Party won 12,085 votes not 2,085.

dta$pv1[
  dta$id == 1826 &
    dta$cst == 150 &
    dta$pty == 47
] <- 12085


# The data allocate cst values by house, not constituency. I will reallocate all
# of them to account for this so that each unique cst_n has a unique cst.

dta$cst[dta$id == 1826] <-
  match(
    paste(dta$sub[dta$id == 1826], dta$cst_n[dta$id == 1826], sep = " | "),
    unique(paste(dta$sub[dta$id == 1826], dta$cst_n[dta$id == 1826], sep = " | "))
  )
