# Guatemala (November, 1995)

# Data from:
#
# https://www.tse.org.gt/images/uaip/memorias.electorales.php
# https://www.tse.org.gt/PDF/Memoria%20Electoral%202007.pdf
# https://www.electionpassport.com/files/GT/GT.xlsx
# https://repositories.lib.utexas.edu/items/fa3eac43-0517-42fc-8f46-aa9f822d0360
#
# This script preserves the country-level recode of the national tier to cst == 901.

# Guatemala has a country-wide upper tier; set that tier to cst == 901.

dta$cst[
  dta$id == 1207 &
    dta$cst_n %in% c("Guatemala", "guatemala", "GUATEMALA")
] <- 901

# In Quiche, the National Advancement Party won 15,604 votes, not 1,504.

dta$pv1[
  dta$id == 1207 &
    dta$cst_n == "Quiche" &
    dta$pty_n == "National Advancement Party"
] <- 15604
