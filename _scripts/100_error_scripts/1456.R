
# Malaysia (March, 2004)

# District 104 (Kelana Jaya) and District 110 (Klang) are mixed together because
# District 104 has the cst 110 by mistake. Changing it to cst == 104.

dta$cst[
  dta$id == 1456 &
    dta$cst_n == "District 104 (Kelana Jaya)"
] <- 104


# District 173 (Putatan) and District 174 (Penampang) are mixed together because
# District 173 has the cst 174 by mistake. Changing it to cst == 173.

dta$cst[
  dta$id == 1456 &
    dta$cst_n == "District 173 (Putatan)"
] <- 173
