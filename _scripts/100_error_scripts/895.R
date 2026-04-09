# Bangladesh (December, 2008)

# Data from:
#
# https://web.archive.org/web/20141218135335/http://www.ecs.gov.bd/MenuExternalFilesEng/125.pdf

# In Dhaka-6, the Awami League won, not the Bangladesh Nationalist Party.

dta$seat[
  dta$id == 895 &
    dta$cst == 76 &
    dta$pty == 28
] <- 0

dta$seat[
  dta$id == 895 &
    dta$cst == 76 &
    dta$pty == 3
] <- 1
