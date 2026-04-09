
# Ghana (December, 2004)

# Data from:
#
# https://web.archive.org/web/20200902090950/https://swap.stanford.edu/20121211163203/http%3A//results.ec.gov.gh/assets/file/2004ParliamentaryDetResults.pdf

# In Wa Central, the Democratic People's Party won 172 votes, not 0.

dta$pv1[
  dta$id == 44 &
    dta$cst == 218 &
    dta$pty == 2
] <- 172
