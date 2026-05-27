# Jamaica (1989, 12)

# Although this election was run using single member district plurality, there's no information on the identity of the seat winner. Results are therefore imputed based on the vote variable.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 427,
    csts = c(4),
    votes = 'pv1'
  )
