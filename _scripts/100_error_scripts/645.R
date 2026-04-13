
# UK (July, 1945)

# cst 3 is "aberdeenshire central"
# https://en.wikipedia.org/wiki/Aberdeen_and_Kincardine_Central#Elections_in_the_1940s

dta$cst_n[
  dta$id == 645 &
    dta$cst == 3
] <- "aberdeenshire central"

# cst 4 is "aberdeen and kincardine east"
# https://en.wikipedia.org/wiki/Aberdeen_and_Kincardine_East_(UK_Parliament_constituency)#Elections_in_the_1940s

dta$cst_n[
  dta$id == 645 &
    dta$cst == 4
] <- "aberdeen and kincardine east"


# cst 270 is "inverness"
# https://en.wikipedia.org/wiki/Inverness_(UK_Parliament_constituency)#Elections_in_the_1940s

dta$cst_n[
  dta$id == 645 &
    dta$cst == 4
] <- "inverness"


# cst 271 is "ross and cromarty"
# https://en.wikipedia.org/wiki/Ross_and_Cromarty_(UK_Parliament_constituency)#Elections_in_the_1940s

dta$cst_n[
  dta$id == 645 &
    dta$cst == 271
] <- "ross and cromarty"


# cst 272 is "western isles"
# https://en.wikipedia.org/wiki/Na_h-Eileanan_an_Iar_(UK_Parliament_constituency)#Elections_in_the_1940s

dta$cst_n[
  dta$id == 645 &
    dta$cst == 272
] <- "western isles"


# cst 341 is "horncastle"
# https://en.wikipedia.org/wiki/Horncastle_(UK_Parliament_constituency)#Elections_in_the_1940s

dta$cst_n[
  dta$id == 645 &
    dta$cst == 341
] <- "horncastle"


# cst 342 is "louth"
# https://en.wikipedia.org/wiki/Louth,_Lincolnshire_(UK_Parliament_constituency)#Elections_in_the_1940s

dta$cst_n[
  dta$id == 645 &
    dta$cst == 342
] <- "louth"


# cst 343 is "gainsborough"
# https://en.wikipedia.org/wiki/Louth,_Lincolnshire_(UK_Parliament_constituency)#Elections_in_the_1940s

dta$cst_n[
  dta$id == 645 &
    dta$cst == 343
] <- "gainsborough"


# cst 344 is "brigg"
# https://en.wikipedia.org/wiki/Brigg_(UK_Parliament_constituency)#Elections_in_the_1940s

dta$cst_n[
  dta$id == 645 &
    dta$cst == 344
] <- "brigg"


# In cst == 91 (cardiff, east) the Nationals won 11,306 votes
# https://api.parliament.uk/uk-general-elections/elections/14370

dta$pv1[
  dta$id == 645 &
    dta$cst == 91 &
    dta$pty == 90
] <- 11306

dta$cv1[
  dta$id == 645 &
    dta$cst == 91 &
    dta$pty == 90
] <- 11306


# For some reason, the data include independent candidates twice: once with the
# vote share and once as -990. I will omit the missing ones.

dta <-
  dta |>
  filter(
    !(id == 645 & cv1 == -990 & pv1 > 0)
  )


# Finally, the UK uses first-past-the-post in almost all cases, so we can simply
# allocate seats in districts where mag == 1 to the largest vote winner. In the
# few multi-member districts, we instead allocate the seats to the top M vote
# winners instead.

dta$seat[dta$id == 645] <- 0

dta <-
  dta |>
  group_by(id, cst) |>
  mutate(
    seat = if_else(
      id == 645 & row_number(desc(cv1)) <= first(mag),
      1,
      seat
    )
  ) |>
  ungroup()
