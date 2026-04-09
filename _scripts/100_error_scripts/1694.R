
# Bangladesh, (June 1996)

# Data from:
#
# https://web.archive.org/web/20141218135335/http://www.ecs.gov.bd/MenuExternalFilesEng/125.pdf

# In Moulovibazar-4, the Awami League won, not Jatiya Party.

dta$seat[
  dta$id == 1694 &
    dta$cst == 175 &
    dta$pty == 56
] <- 0

dta$seat[
  dta$id == 1694 &
    dta$cst == 175 &
    dta$pty == 3
] <- 1


# In Naogaon-3, the Bangladesh Nationalist Party won, not the Awami League.

dta$seat[
  dta$id == 1694 &
    dta$cst == 194 &
    dta$pty == 3
] <- 0

dta$seat[
  dta$id == 1694 &
    dta$cst == 194 &
    dta$pty == 28
] <- 1


# In Mymensingh-3, the Bangladesh Nationalist Party won, not the Awami League.

dta$seat[
  dta$id == 1694 &
    dta$cst == 183 &
    dta$pty == 3
] <- 0

dta$seat[
  dta$id == 1694 &
    dta$cst == 183 &
    dta$pty == 28
] <- 1


# The label "Samridha Bangladesh Andolon" is coded as both pty == 78, pty == 79,
# pty == 80, pty == 81, pty == 82, pty == 83, pty == 84, pty == 85, pty == 86,
# and pty == 87 in this election. It should be 78.

dta$pty[
  dta$id == 1694 &
    dta$pty_n == "Samridha Bangladesh Andolon"
] <- 78
