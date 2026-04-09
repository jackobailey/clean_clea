
# Pakistan, (March 1977)

# Pakistan's women's constituencies and minorities tier sit at cst == 201-211 in
# this election, but these are upper-tier reserved seats so should be 900+.

dta$cst[
  dta$id == 2077 &
    dta$cst %in% 201:211
] <-
  match(
    dta$cst[dta$id == 2077 & dta$cst %in% 201:211],
    unique(dta$cst[dta$id == 2077 & dta$cst %in% 201:211])
  ) + 900


# However, the seats aren't elected so I remove them.

dta <-
  dta |>
  filter(!(id == 2077 & cst %in% 901:911))
