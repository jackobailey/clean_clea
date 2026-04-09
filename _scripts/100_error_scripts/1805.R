
# Madagascar (December, 2013)

# Data from:
#
# https://web.archive.org/web/20170916034337/http://www.hcc.gov.mg/elections/legislatives2013/deputes
# https://web.archive.org/web/20171015083951/http://www.hcc.gov.mg/elections/legislatives2013/district/6201

# There are several rows of data missing from AMBOASARY SUD, I will merge these
# into the data.

dta <-
  dta |>
  bind_rows(
    here(
      "_data",
      "man",
      "mdg_2013.csv"
    ) |>
      read_csv(show_col_types = FALSE)
  )


# "ENINA" is coded as both pty == 63 and pty == 64 in this election. I use 63.
# I also recode the name to "ENINA" in all cases, since it is an initialism of
# "ENSEMBLE POUR L INTERET DE LA NATION" already.

dta$pty_n[
  dta$id == 1805 &
    dta$pty_n %in% c("ENINA", "ENINA ENSEMBLE POUR L INTERET DE LA NATION")
] <- "ENINA"

dta$pty[
  dta$id == 1805 &
    dta$pty_n  == "ENINA"
] <- 63


# Code pty == 62 is used for 5 distinct labels in this election. All correspond
# to "EMMA", which I will replace them with.

dta$pty_n[
  dta$id == 1805 &
    dta$pty == 62
] <- "EMMA"


# Code pty == 107 is used for "Association FIVOY" and "FIVOY" in this election.
# I use "FIVOY"

dta$pty_n[
  dta$id == 1805 &
    dta$pty == 107
] <- "FIVOY"

