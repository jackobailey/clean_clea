
# Pakistan (November, 1988)

# Data from:
#
# https://fafen.org/wp-content/uploads/2010/08/Compendium-National-Assembly-Elections-1970-2008-Pakistan.pdf

# The Qadiani/Ahmedi/Lahori seat remained vacant as no one filed for nomination.
# As such, I will remove it from the data.

dta <-
  dta |>
  filter(!(id == 1815 & cst == 211))


# The following cst values are coded below 900 even though the names show that
# they are minority-reserved districts rather than ordinary territorial NA
# constituencies. Under the codebook these special upper-tier seats should be
# coded 900+.
#
# Language/context:
# - "Minority District" is explicit in the English rendering.
# - These districts sit outside the ordinary NA-1 ... NA-207 territorial
#   sequence.
#
# Flagged cases:
# - cst == 208: Christian Minority District
# - cst == 209: Hindu and Scheduled Castes Minority District
# - cst == 210: Sikhs, Buddhists, Parsis, and Other Non-Muslims Minority District

dta$cst[
  dta$id == 1815 &
    dta$cst %in% 208:210
] <-
  match(
    dta$cst_n[dta$id == 1815 & dta$cst %in% 208:210],
    unique(dta$cst_n[dta$id == 1815 & dta$cst %in% 208:210])
  ) + 900


# In cst == 64 (NA-64 Faisalabad-8), the Pakistan Peoples Party won

dta$seat[
  dta$id == 1815 &
    dta$cst == 64 &
    dta$pty == 6230
] <- 0

dta$seat[
  dta$id == 1815 &
    dta$cst == 64 &
    dta$pty == 101
] <- 1
