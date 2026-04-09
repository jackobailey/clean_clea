# Botswana (October, 2009)

# Data from:
#
# https://www.iec.gov.bw/images/2009_report.pdf

# In Selibe Phikwe East (cst == 44), the Botswana Democratic Party won the
# seat.

dta$seat[
  dta$id == 969 &
    dta$cst == 44 &
    dta$pty == 2
] <- 0

dta$seat[
  dta$id == 969 &
    dta$cst == 44 &
    dta$pty == 3
] <- 1
