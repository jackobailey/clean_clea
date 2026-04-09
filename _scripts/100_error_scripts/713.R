# United States (November, 2002)

# Data from:
#
# https://clerk.house.gov/member_info/electionInfo/2002/2002Stat.htm
# https://en.wikipedia.org/wiki/Louisiana%27s_5th_congressional_district#2002

# Results for Louisiana 5 appear to be wrong.

dta <-
  dta |>
  filter(
    !(
      id == 713 &
        cst == 176 &
        !can %in% c("rodney alexander", "lee fletcher")
    )
  )

dta$pv1[
  dta$id == 713 &
    dta$cst == 176 &
    dta$can == "rodney alexander"
] <- 86718

dta$cv1[
  dta$id == 713 &
    dta$cst == 176 &
    dta$can == "rodney alexander"
] <- 86718

dta$pv1[
  dta$id == 713 &
    dta$cst == 176 &
    dta$can == "lee fletcher"
] <- 85744

dta$cv1[
  dta$id == 713 &
    dta$cst == 176 &
    dta$can == "lee fletcher"
] <- 85744
