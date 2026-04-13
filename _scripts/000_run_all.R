
# Correct the Elections Archive data

# To do -------------------------------------------------------------------

# - Deal with fusion voting: US, Venezuela, Peru, Mexico, any others?
# - What to do about districts where candidates from the same party compete?
#   - Could compute effective number of options/choices not parties? Need to get
#     a really good grip on how votes are allocated under open list first.
# - Remove blank, invalid, and against all/none of the above votes that might
#   have sneaked into the data.
# - Make sure to check for candidates with no party (assume independent/other)?


# Housekeeping ------------------------------------------------------------

# Load packages

library(tidyverse)
library(vdemdata)
library(countrycode)
library(piecemaker)
library(here)


# Load raw Elections Archive data

here(
  "_data",
  "raw",
  "clea",
  "clea_lc_20251015.RData"
) |>
  load()

dta <- clea_lc_20251015

rm(clea_lc_20251015)


# Load convenience functions

source(
  here(
    "_scripts",
    "001_functions.R"
  )
)



# Wrangle data ------------------------------------------------------------

# Loop over election-specific identifiers, correct any errors in the data, then
# saved the cleaned CLEA data to disk

source(
  here(
    "_scripts",
    "002_loop_and_correct.R"
  )
)


# Use V-Dem to create simple systems classifier

source(
  here(
    "_scripts",
    "003_classify_simple_systems.R"
  )
)


# Subset to simple systems and prepare data for analysis

source(
  here(
    "_scripts",
    "004_subset_simple_systems.R"
  )
)


# Compute summary statistics

source(
  here(
    "_scripts",
    "005_compute_statistics.R"
  )
)


# Conduct unit tests to detect remaining errors

source(
  here(
    "_scripts",
    "006_unit_tests.R"
  )
)


# Save to disk

write_rds(
  dta,
  here(
    "_data",
    "proc",
    "simple_systems.rds"
  ),
  compress = "gz"
)
