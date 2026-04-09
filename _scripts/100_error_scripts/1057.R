
# New Zealand (November, 1999)

# For some reason, the list votes are at the constituency level rather than the
# national level where the seats would have been allocated. All of the 9XX seats
# are list counts, so we'll merge them together, aggregate everything up, then
# allocate the parties the seats the list seats they got according to Wikipedia.
#
# https://en.wikipedia.org/wiki/1999_New_Zealand_general_election#List_results

dta <-
  collapse_nz_list(
    dta = dta,
    id = 1057,
    mag = 53,
    seat_allocations = c(
      "34" = 8,
      "49" = 17,
      "101" = 9,
      "100" = 9,
      "122" = 6,
      "140" = 4
    ),
    arrange_votes = FALSE
  )
