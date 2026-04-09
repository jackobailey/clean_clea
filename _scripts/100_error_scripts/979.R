
# Liberia (October, 2005)

# In grand bassa county (cst == 16) the national patriotic party did not win a
# seat in the district
#
# https://results.necliberia.org/results2005/PDFs/NationalProgressiveresultsReport.pdf
# https://en.wikipedia.org/wiki/Grand_Bassa-4

dta$seat[
  dta$id == 979 &
    dta$cst == 16 &
    dta$pty == 10
] <- 0
