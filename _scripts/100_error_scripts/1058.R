
# New Zealand (July, 2002)

# For some reason, the list votes are at the constituency level rather than the
# national level where the seats would have been allocated. All of the 9XX seats
# are list counts, so we'll merge them together, aggregate everything up, then
# allocate the parties the seats the list seats they got according to Wikipedia.
#
# https://en.wikipedia.org/wiki/1999_New_Zealand_general_election#List_results

dta <-
  collapse_nz_list(
    dta = dta,
    id = 1058,
    mag = 51,
    seat_allocations = c(
      "34" = 7,
      "49" = 6,
      "140" = 12,
      "100" = 9,
      "122" = 9,
      "164" = 7,
      "125" = 1
    ),
    arrange_votes = TRUE
  )
