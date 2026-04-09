
# Guinea-Bissau (November, 2008)

# The "Africa" and "Europa" districts are for voters abroad, but have no vote
# or seat data, so I will omit them

dta <-
  dta |>
  filter(!(id == 1784 & cst_n %in% c("Africa", "Europa")))
