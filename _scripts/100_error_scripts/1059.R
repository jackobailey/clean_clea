
# New Zealand (September, 2005)

# For some reason, the list votes are at the constituency level rather than the
# national level where the seats would have been allocated. All of the 9XX seats
# are list counts, so we'll merge them together, aggregate everything up, then
# allocate the parties the seats the list seats they got according to Wikipedia.
#
# https://en.wikipedia.org/wiki/1999_New_Zealand_general_election#List_results

dta <-
  collapse_nz_list(
    dta = dta,
    id = 1059,
    mag = 52,
    seat_allocations = c(
      "34" = 19,
      "49" = 17,
      "140" = 7,
      "122" = 6,
      "164" = 2,
      "100" = 1
    ),
    arrange_votes = TRUE
  )
