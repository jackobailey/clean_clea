
# Malaysia (August, 1959)

# Data from:
#
# https://github.com/TindakMalaysia/HISTORICAL-ELECTION-RESULTS/blob/main/1959-ELECTION-RESULTS/MALAYA_1959_PARLIAMENT_RESULTS.csv

# cst == 23 is spelt in two different ways. Deferring to the spelling on github.

dta$cst_n[
  dta$id == 1806 &
    dta$cst == 23
] <- "District 023 (Tanah Merah)"


# cst == 90 is spelt in two different ways. Deferring to the spelling on github.

dta$cst_n[
  dta$id == 1806 &
    dta$cst == 90
] <- "District 090 (Segamat Selatan)"


# cst == 98 is spelt in two different ways. Deferring to the spelling on github.

dta$cst_n[
  dta$id == 1806 &
    dta$cst == 98
] <- "District 098 (Pontian Selatan)"


# cst == 99 is spelt in two different ways. Deferring to the spelling on github.

dta$cst_n[
  dta$id == 1806 &
    dta$cst == 99
] <- "District 099 (Kluang Selatan)"


# In Bandar Malacca (cst == 86), Tan Kee Gak won, not Wong Koon Yoon

dta$seat[
  dta$id == 1806 &
    dta$cst == 86 &
    dta$can == "Tan Kee Gak"
] <- 1

dta$seat[
  dta$id == 1806 &
    dta$cst == 86 &
    dta$can == "Wong Koon Yoon"
] <- 0


# In Seberang Selatan (cst == 33), V Veerapan won, not Tay Hooi Soo

dta$seat[
  dta$id == 1806 &
    dta$cst == 33 &
    dta$can == "V Veerapan"
] <- 1

dta$seat[
  dta$id == 1806 &
    dta$cst == 33 &
    dta$can == "Tay Hooi Soo"
] <- 0
