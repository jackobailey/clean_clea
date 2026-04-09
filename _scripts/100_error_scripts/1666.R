# Philippines (November, 1965)

# Data from:
#
# https://en.wikipedia.org/wiki/1965_Philippine_general_election

# Independents sometimes ran under the banner of the major parties. I will code
# these candidates as having been independent instead. I will also code the
# small number of unknown candidates as being independent too.

dta <-
  dta |>
  mutate(
    pty_n =
      case_when(
        id == 1666 & str_detect(pty_n, "Independent") ~ "Independent",
        id == 1666 & pty_n == "Unknown" ~ "Independent",
        TRUE ~ pty_n
      ),
    pty =
      if_else(
        id == 1666 & pty_n == "Independent",
        6000,
        pty
      )
  )
