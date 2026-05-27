# Jamaica (1972, 2)

# Although this election was run using single member district plurality, there's no information on the identity of the seat winner. Results are therefore imputed based on the vote variable.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 423,
    csts = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53),
    votes = 'pv1'
  )
