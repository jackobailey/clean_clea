
# Lesotho (November, 2017)

# Data from:
#
# https://en.wikipedia.org/wiki/2017_Lesotho_general_election#By_district

# The following parties are missing from the national constituency (cst == 901):
#
# - Alliance of Democrats, 42,686, 8
# - Basotho National Party, 23,541, 5
# - Democratic Congress, 150,172, 4
# - All Basotho Convention, 235,729, 1
# - Basutoland Congress Party, 3,458, 1
# - Democratic Party of Lesotho, 2,801, 1

dta <-
  dta |>
  bind_rows(
    here(
      "_data",
      "man",
      "lso_2017.csv"
    ) |>
      read_csv(show_col_types = FALSE) |>
      mutate(
        sub = as.character(sub),
        can = as.character(can)
      )
  )
