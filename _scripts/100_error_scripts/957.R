
# Sri Lanka (March, 1965)

# Data from:
#
# https://web.archive.org/web/20150713003440/http://www.slelections.gov.lk/pdf/Results_1965%20GENERAL%20ELECTION.PDF
# https://en.wikipedia.org/wiki/Colombo_South_Electoral_District#1965_Parliamentary_General_Election

# Colombo South was a two seat district, but only two candidates contested it at
# the 1965 election. For some reason, the Elections Archive data do not list the
# candidates (or their parties), but Wikipedia suggests that one came from the
# "Elephant" and one from the "Key" symbol parties. I will amend accordingly.
# There are also 2 duplicate rows that I will remove.

dta <-
  dta |>
  filter(!(id == 957 & cst == 145))

dta <-
  dta |>
  add_row(
    id = 957,
    rg = "Asia",
    ctr_n = "Sri Lanka",
    ctr = 144,
    yr = 1965,
    mn = 3,
    cst_n = "Colombo South",
    cst = 145,
    mag = 2,
    pty_n = "elephant",
    pty = 3999,
    can = "Junius Richard Jayewardene",
    cv1 = -990,
    pv1 = -990,
    seat = 1
  ) |>
  add_row(
    id = 957,
    rg = "Asia",
    ctr_n = "Sri Lanka",
    ctr = 144,
    yr = 1965,
    mn = 3,
    cst_n = "Colombo South",
    cst = 145,
    mag = 2,
    pty_n = "key",
    pty = 3999,
    can = "Bernard Soysae",
    cv1 = -990,
    pv1 = -990,
    seat = 1
  )


# Despite having different symbols associated with different parties as names,
# all parties in Sri Lanka have the same pty code (3999). I will replace them
# with unique codes.

dta$pty[dta$id == 957] <-
  match(
    dta$pty_n[dta$id == 957],
    unique(dta$pty_n[dta$id == 957])
  )
