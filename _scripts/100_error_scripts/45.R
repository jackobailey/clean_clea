
# Guinea-Bissau (July, 1994)

# Data from:
#
# http://www.cne.gw/images/docs/EG_1994_1_resultados.pdf

# The 'Africa' and 'Europe' constituencies were for voters abroad and did not
# elect their own deputies, so I will remove them.

dta <-
  dta |>
  filter(
    !(id == 45 & cst == 22),
    !(id == 45 & cst == 23)
  )
