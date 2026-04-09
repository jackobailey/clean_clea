
# Ukraine (July, 2019)

# Data from:
#
# https://www.cvk.gov.ua/en/election-of-people-s-deputies-of-ukraine.html
# https://www.cvk.gov.ua/wp-content/uploads/2019/10/2019-NDU-en-Analytical-report.pdf

# The 2019 parliamentary-election record is not reconstructible from these rows
# since every seat is 0, including the national constituency, so I will drop the
# election instead of inventing a repair.

dta <-
  dta |>
  filter(id != 1889)
