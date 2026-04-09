
# Cyprus (May, 2016)

# Data from:
#
# https://www.parliament.cy/easyconsole.cfm/id/2053
# https://en.wikipedia.org/wiki/2016_Cypriot_legislative_election

# Restore the missing elected MPs in Lefkosia and Lemesos, and clear the four
# later replacement rows in Lefkosia.

dta <-
  dta |>
  mutate(
    seat =
      case_when(
        id == 1541 & cst == 4 & can %in% c(
          "Konstantinou Ksenia",
          "Sofokleous Michalis",
          "Orfanidou Savia",
          "Georgiadou Roula"
        ) ~ 0,
        id == 1541 & cst == 4 & can %in% c(
          "Kyriakidou Stella",
          "Kasinis Solonas",
          "Nouris Nikos",
          "Syllouris Demetrios"
        ) ~ 1,
        id == 1541 & cst == 5 & can == "Sizopoulos Marinos" ~ 1,
        TRUE ~ seat
      )
  ) |>
  bind_rows(
    tibble(
      release = 9,
      id = 1541,
      rg = "Asia",
      ctr = 196,
      ctr_n = "Cyprus",
      yr = 2016,
      mn = 5,
      sub = "-990",
      cst = c(4, 4, 4, 4, 4, 5),
      cst_n = c("Lefkosia", "Lefkosia", "Lefkosia", "Lefkosia", "Lefkosia", "Lemesos"),
      mag = c(20, 20, 20, 20, 20, 12),
      pty = c(5, 15, 4, 19, 12, 11),
      pty_n = c(
        "Democratic Rally",
        "Progressive Party of Working People",
        "Democratic Party",
        "Citizen's Alliance",
        "National People's Front",
        "Movement for Social Democracy"
      ),
      can = c(
        "Neofytou Averof",
        "Kyprianou Andros",
        "Papadopoulos Nicolas",
        "Lillikas Giorgos",
        "Christou Christos",
        "Sizopoulos Marinos"
      ),
      seat = 1
    )
  )


# Collapse the Cyprus rows to the party level for this election.

dta <-
  collapse_cyprus(
    dta = dta,
    id = 1541
  )
