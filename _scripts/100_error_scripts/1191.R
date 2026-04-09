
# Estonia (March, 2007)

# In Harjumaa, Raplamaa, the district magnitude was 12
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._4#2007

dta$mag[
  dta$id == 1191 &
    dta$cst == 1
] <- 12


# In Ida-Virumaa, the district magnitude was 6
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._7#2007

dta$mag[
  dta$id == 1191 &
    dta$cst == 3
] <- 6


# In Järvamaa, Viljandimaa, the district magnitude was 10
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._8#2007

dta$mag[
  dta$id == 1191 &
    dta$cst == 4
] <- 10


# In Jõgevamaa, Tartumaa, the district magnitude was 5
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._9#2007

dta$mag[
  dta$id == 1191 &
    dta$cst == 5
] <- 6


# In Lääne-Virumaa, the district magnitude was 4
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._6#2007

dta$mag[
  dta$id == 1191 &
    dta$cst == 6
] <- 4


# In Pärnumaa, the district magnitude was 7
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._12#2007

dta$mag[
  dta$id == 1191 &
    dta$cst == 7
] <- 7


# In Tallinn 1 (Haabersti, Põhja-Tallinn, Kristiine), the district magnitude was 7
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._1#2007

dta$mag[
  dta$id == 1191 &
    dta$cst == 8
] <- 10


# In Tallinn 2 (Kesklinn, Lasnamäe, Pirita), the seats are wrong
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._2#2007

dta$seat[
  dta$id == 1191 &
    dta$cst == 9 &
    dta$pty == 6
] <- 5

dta$seat[
  dta$id == 1191 &
    dta$cst == 9 &
    dta$pty == 22
] <- 2


# In Tallinn 3 (Mustamäe, Nõmme), the district magnitude was 11 and the seats
# are wrong too
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._3#2007

dta$mag[
  dta$id == 1191 &
    dta$cst == 10
] <- 11

dta$seat[
  dta$id == 1191 &
    dta$cst == 10 &
    dta$pty == 6
] <- 3

dta$seat[
  dta$id == 1191 &
    dta$cst == 10 &
    dta$pty == 22
] <- 3


# In Tartu linn (city), the district magnitude was 7
# https://en.wikipedia.org/wiki/Riigikogu_electoral_district_no._10#2007

dta$mag[
  dta$id == 1191 &
    dta$cst == 11
] <- 9
