
# Slovenia (October, 2000)

# Data from:
#
# https://www.dvk-rs.si/arhivi/dz2000/en/enrez_vo2.html

# Slovenia elects deputies through constituencies that are subdivided into
# electoral districts. These district rows are not comparable to the seat
# audit, so the election is excluded here.

dta <-
  dta |>
  filter(id != 1753)
