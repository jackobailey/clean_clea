
# Estonia (March, 2011)

# Seat totals are wrong in Harjumaa, Raplamaa
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._4#2011

dta$seat[
  dta$id == 1192 &
    dta$cst == 1 &
    dta$pty == 13
] <- 6

dta$seat[
  dta$id == 1192 &
    dta$cst == 1 &
    dta$pty == 6
] <- 3


# In Hiiumaa, Läänemaa, Saaremaa, the district magnitude was 8 and the seats are
# wrong too
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._5#2011

dta$mag[
  dta$id == 1192 &
    dta$cst == 2
] <- 8

dta$seat[
  dta$id == 1192 &
    dta$cst == 2 &
    dta$pty == 13
] <- 3

dta$seat[
  dta$id == 1192 &
    dta$cst == 2 &
    dta$pty == 33
] <- 3


# In Ida-Virumaa, one of the seat totals is wrong
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._7#2011

dta$seat[
  dta$id == 1192 &
    dta$cst == 3 &
    dta$pty == 33
] <- 2


# In Järvamaa, Viljandimaa, two seat totals are wrong and the district magnitude
# was 10
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._8#2011

dta$mag[
  dta$id == 1192 &
    dta$cst == 4
] <- 10

dta$seat[
  dta$id == 1192 &
    dta$cst == 4 &
    dta$pty == 13
] <- 4

dta$seat[
  dta$id == 1192 &
    dta$cst == 4 &
    dta$pty == 6
] <- 2


# In Jõgevamaa, Tartumaa, the district magnitude was 6
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._9#2011

dta$mag[
  dta$id == 1192 &
    dta$cst == 5
] <- 6


# In Lääne-Virumaa, one seat is off
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._6#2011

dta$seat[
  dta$id == 1192 &
    dta$cst == 6 &
    dta$pty == 33
] <- 2


# In Pärnumaa, the district magnitude was 6 and the seats are wrong
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._12#2011

dta$mag[
  dta$id == 1192 &
    dta$cst == 7
] <- 6

dta$seat[
  dta$id == 1192 &
    dta$cst == 7 &
    dta$pty == 22
] <- 2


# Tallinn 1 (Haabersti, Põhja-Tallinn, Kristiine), the magnitude was 10 and the
# seat totals are wrong
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._1#2011

dta$mag[
  dta$id == 1192 &
    dta$cst == 8
] <- 10

dta$seat[
  dta$id == 1192 &
    dta$cst == 8 &
    dta$pty == 6
] <- 4

dta$seat[
  dta$id == 1192 &
    dta$cst == 8 &
    dta$pty == 13
] <- 3


# In Tallinn 2 (Kesklinn, Lasnamäe, Pirita), the magnitude was 10 and the seat
# totals are wrong
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._2#2011

dta$mag[
  dta$id == 1192 &
    dta$cst == 9
] <- 10

dta$seat[
  dta$id == 1192 &
    dta$cst == 9 &
    dta$pty == 13
] <- 3

dta$seat[
  dta$id == 1192 &
    dta$cst == 9 &
    dta$pty == 22
] <- 3


# In Tallinn 3 (Mustamäe, Nõmme), the district magnitude was 7 and the seats are
# wrong too
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._3#2011

dta$mag[
  dta$id == 1192 &
    dta$cst == 10
] <- 7

dta$seat[
  dta$id == 1192 &
    dta$cst == 10 &
    dta$pty == 22
] <- 2

dta$seat[
  dta$id == 1192 &
    dta$cst == 10 &
    dta$pty == 33
] <- 1


# In Tartu linn (city), the district magnitude was 7
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._10#2011

dta$mag[
  dta$id == 1192 &
    dta$cst == 11
] <- 7


# In Võrumaa, Valgamaa, Põlvamaa, the district magnitude was 10 and the seats
# are wrong too
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._1#2011

dta$mag[
  dta$id == 1192 &
    dta$cst == 12
] <- 10

dta$seat[
  dta$id == 1192 &
    dta$cst == 12 &
    dta$pty == 13
] <- 3

dta$seat[
  dta$id == 1192 &
    dta$cst == 12 &
    dta$pty == 6
] <- 3
