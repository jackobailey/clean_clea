
# Korea (June, 1967)

# As in the previous cases, I am content that we can allocate the seat to the
# candidate with the largest vote count since all the district magnitudes are 1.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 454,
    votes = "cv1"
  )
