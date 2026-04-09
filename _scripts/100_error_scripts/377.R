
# Ireland (June, 1927)

# Data from:
#
# https://www.electionsireland.org/result.cfm?cons=88&election=1927jun&sort=party
# https://en.wikipedia.org/wiki/Dublin_County_(D%C3%A1il_constituency)

# In cst == 9 (dublin county), the district magnitude was 8. Further, Kevin
# O'Higgins, Desmond Fitzgerald, Batt O'Connor, Patrick Belton, Seán MacEntee,
# Major Bryan Cooper, John Good, and Thomas Johnson were elected.

dta$mag[
  dta$id == 377 &
    dta$cst == 9
] <- 8

dta$seat[
  dta$id == 377 &
    dta$cst == 9 &
    dta$can %in% c(
      "Kevin O'Higgins",
      "Desmond Fitzgerald",
      "Batt O'Connor",
      "Patrick Belton",
      "Seán MacEntee",
      "Major Bryan Cooper",
      "John Good",
      "Thomas Johnson"
    )
] <- 1
