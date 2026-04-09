# New Zealand (November, 1978)

# Data from:
#
# https://www.elections.nz/democracy-in-nz/historical-events/1978-general-election/
# https://www3.stats.govt.nz/New_Zealand_Official_Yearbooks/1976/NZOYB_1976.html
# https://www3.stats.govt.nz/New_Zealand_Official_Yearbooks/1979-80/NZOYB_1979-80.html
#
# In Wanganui, the 1978 rows include a second set of vote totals from the 1975
# election. I remove the duplicated 1975 values.

dta <-
  dta |>
  filter(
    !(
      id == 838 &
        cst == 83 &
        pv1 %in% c(9313, 8069, 1937, 531, 100)
    )
  )
