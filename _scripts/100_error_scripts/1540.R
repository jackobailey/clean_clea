# Cyprus (May, 2011)

# I am not confident that the CLEA rows have recorded the 2011 winners correctly
# across districts, so I remove this election for now.

dta <-
  dta |>
  filter(id != 1540)
