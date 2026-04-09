
# Poland (October, 2023)

# Data from:
#
# https://sejmsenat2023.pkw.gov.pl/sejmsenat2023/statics/PKW_AKTUALNOSCI/uploaded_files/1697617008_obwieszczenie-sejm.pdf
# https://sejmsenat2023.pkw.gov.pl/sejmsenat2023/result_scans/3444/SJM-2023-DLG-001-O.pdf

# In Okręg wyborczy nr 1, RACZYŃSKI Robert is coded as seat == -996. The other
# 12 winners already account for the district magnitude, so this should be 0.

dta$seat[
  dta$id == 2315 &
    dta$cst == 1 &
    dta$can == "RACZYŃSKI Robert"
] <- 0
