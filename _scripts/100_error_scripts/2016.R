
# Tanzania, (October 2020)

# Data from:
#
# https://www.inec.go.tz/uploads/documents/sw-1713180982-1624892417-matokeo%20final%205%20january%202021%20special%20gazzete.pdf

# There is a 75-member women's list elected directly by the parties. As such, I
# remove this from the data.

dta <-
  dta |>
  filter(!(id == 2016 & cst == 265))


# In Mtwara Vijijini, Shamsia Azizi Mtamba won, not Idrisa Mtuma Yusuph.

dta$seat[
  dta$id == 2016 &
    dta$cst == 169 &
    dta$can == "Idrisa Mtuma Yusuph"
] <- 0

dta$seat[
  dta$id == 2016 &
    dta$cst == 169 &
    dta$can == "Shamsia Azizi Mtamba"
] <- 1
