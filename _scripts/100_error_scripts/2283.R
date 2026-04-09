
# Nepal (November, 2013)

# Data from:
#
# https://election.gov.np/uploads/content/1618997023.pdf
# https://aceproject.org/ero-en/regions/asia/NP/nepal-final-report-constituent-assembly-election-4

# EC Nepal materials list दलित जनजाति पार्टी as a distinct registered party,
# and 2013 election materials list सोसल रिपब्लिकन पार्टी separately, so I will split
# the shared party code.

dta$pty[
  dta$id == 2283 &
    dta$pty == 10 &
    dta$pty_n == "सोसल रिपब्लिकन पार्टी"
] <- 16

# The label "सद्भावना पार्टी" is coded as both pty == 69 and pty == 129 in this election.
# I will use pty == 69 and rename it to "Goodwill".

dta$pty_n[
  dta$id == 2283 &
    dta$pty_n == "सद्भावना प"
] <- "Goodwill"

dta$pty[
  dta$id == 2283 &
    dta$pty_n == "Goodwill"
] <- 69


# Use the English names for various parties

dta$pty_n[
  dta$id == 2283 &
    dta$pty == 5
] <- "Communist Party of Nepal (United Marxist-Leninist)"

dta$pty_n[
  dta$id == 2283 &
    dta$pty == 44
] <- "Nepali Congress"

dta$pty_n[
  dta$id == 2283 &
    dta$pty == 64
] <- "National Democratic Party"

dta$pty_n[
  dta$id == 2283 &
    dta$pty == 65
] <- "National Democratic Party Nepal"

dta$pty_n[
  dta$id == 2283 &
    dta$pty == 81
] <- "Communist Party of Nepal (Marxist-Leninist)"

dta$pty_n[
  dta$id == 2283 &
    dta$pty == 89
] <- "Madeshi People's Rights Forum (Nepal)"

dta$pty_n[
  dta$id == 2283 &
    dta$pty == 134
] <- "National Madeshi Socialist Party"

dta$pty_n[
  dta$id == 2283 &
    dta$pty == 148
] <- "Federal Socialist Party Nepal"
