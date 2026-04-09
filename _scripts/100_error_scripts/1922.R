
# Croatia (July, 2020)

# The Elections Archive errata says to drop this election as it appears twice

dta <-
  dta |>
  filter(id != 1922)
