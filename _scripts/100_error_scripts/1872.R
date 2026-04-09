
# Slovenia (June, 2018)

# Data from:
#
# https://www.dvk-rs.si/fileadmin/user_upload/dokumenti/volitve/drzavni_zbor_2018/011dyenp.pdf
#
# The 2018 election is allocated at constituency/district level, and these
# district rows do not provide a stable seat total for the audit, so the whole
# election is excluded here.

dta <-
  dta |>
  filter(id != 1872)
