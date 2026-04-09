# United States (November, 1996)

# Data from:
#
# https://clerk.house.gov/member_info/electionInfo/1996/96Stat.htm

# In Texas 9, the Clerk's statistics report the December 10 runoff totals.

dta <-
  dta |>
  filter(
    !(
      id == 1106 &
        cst == 398 &
        can == "geraldine sam"
    )
  )

dta$pv1[
  dta$id == 1106 &
    dta$cst == 398 &
    dta$can == "steve stockman"
] <- 52870

dta$cv1[
  dta$id == 1106 &
    dta$cst == 398 &
    dta$can == "steve stockman"
] <- 52870

dta$seat[
  dta$id == 1106 &
    dta$cst == 398 &
    dta$can == "steve stockman"
] <- 0

dta$pv1[
  dta$id == 1106 &
    dta$cst == 398 &
    dta$can == "nick lampson"
] <- 59225

dta$cv1[
  dta$id == 1106 &
    dta$cst == 398 &
    dta$can == "nick lampson"
] <- 59225

dta$seat[
  dta$id == 1106 &
    dta$cst == 398 &
    dta$can == "nick lampson"
] <- 1
