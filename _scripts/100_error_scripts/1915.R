
# Burkina Faso (May, 2007)

# Data from:
#
# https://github.com/jackobailey/burkina_faso_2007_election

# One instance of cst == 42 is named "Yagha" instead of "Yatenga"

dta$cst_n[
  dta$id == 1915 &
    dta$cst == 42
] <- "Yatenga"


# In Yagha, the district magnitude was 1

dta$mag[
  dta$id == 1915 &
    dta$cst == 41
] <- 1


# The data do not include data from the national list which I add here

dta <-
  dta |>
  bind_rows(
    here(
      "_data",
      "man",
      "bfa_2007.csv"
    ) |>
      read_csv(show_col_types = FALSE) |>
      mutate(can = as.character(can))
  )
