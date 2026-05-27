# Saint Lucia (1982, 5)

# Although this election was run using single member district plurality, there's no information on the identity of the seat winner. Results are therefore imputed based on the vote variable.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 946,
    csts = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17),
    votes = 'pv1'
  )
