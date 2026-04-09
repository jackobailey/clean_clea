
# Pakistan (October, 1990)

# One case in NA-115 Multan-2 is allocated to cst == 114 instead of cst == 115

dta$cst[
  dta$id == 1816 &
    dta$cst_n == "NA-115 Multan-2"
] <- 115


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
# - cst == 210: Sikh, Buddhist, Parsi, and Other Non-Muslims Minority District
# - cst == 211: Quadiani and Lahori Minority District

dta$cst[
  dta$id == 1816 &
    dta$cst %in% 208:211
] <-
  match(
    dta$cst_n[dta$id == 1816 & dta$cst %in% 208:211],
    unique(dta$cst_n[dta$id == 1816 & dta$cst %in% 208:211])
  ) + 900
