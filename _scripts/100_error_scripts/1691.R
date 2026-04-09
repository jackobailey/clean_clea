# Azerbaijan (November, 2015)

# Data from:
#
# https://www.msk.gov.az/uploads/Sechki-2015/Protokol/AR_MSK_PRT_2015_MM.pdf
# https://www.msk.gov.az/uploads/Secki-2016/Protokol/PR_CEC_MM_2016.pdf

# The official CEC protocol for the main election is dated November 1, 2015,
# and the separate Aghdash repeat election was held on June 18, 2016. I keep
# the existing CLEA normalization here so the block stays internally
# consistent.

dta$yr[
  dta$id == 1691
] <- 2015

dta$mn[
  dta$id == 1691
] <- 11
