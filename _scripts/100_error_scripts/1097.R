
# UK (March, 1966)

# cst == 629 is "Skipton"
# https://en.wikipedia.org/wiki/Skipton_(UK_Parliament_constituency)#Elections_in_the_1960s

dta$cst_n[
  dta$id == 1097 &
    dta$cst == 629
] <- "Skipton"


# cst == 630 is "Sowerby"
# https://en.wikipedia.org/wiki/Sowerby_(UK_Parliament_constituency)#Elections_in_the_1960s

dta$cst_n[
  dta$id == 1097 &
    dta$cst == 630
] <- "Sowerby"
