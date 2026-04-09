
# Senegal (July, 2012)

# According to the documentation, the Senegalese diaspora gained representation
# in 2016. This explains why the "Etranger" district has a magnitude of 0. I do
# not know what happened to these votes, but will remove them for now.

dta <-
  dta |>
  filter(!(id == 1671 & cst == 9))
