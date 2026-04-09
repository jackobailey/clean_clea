
# Japan, (June 2000)

# Data from:
#
# https://en.wikipedia.org/wiki/Ibaraki_7th_district
# https://en.wikipedia.org/wiki/Niigata_2nd_district
# https://en.wikipedia.org/wiki/%C5%8Cita_1st_district
# https://en.wikipedia.org/wiki/Tokyo_15th_district
# https://en.wikipedia.org/wiki/Ōita_3rd_district

# In cst == 106 (Ibaraki-7), a different independent won the seat

dta$seat[
  dta$id == 1440 &
    dta$cst == 106 &
    dta$pty == 6009
] <- 0

dta$seat[
  dta$id == 1440 &
    dta$cst == 106 &
    dta$pty == 6011
] <- 1


# In cst == 181 (Niigata-2), a different independent won the seat

dta$seat[
  dta$id == 1440 &
    dta$cst == 181 &
    dta$pty == 6036
] <- 0

dta$seat[
  dta$id == 1440 &
    dta$cst == 181 &
    dta$pty == 6037
] <- 1


# In cst == 186 (Oita-1), the Democratic Party of Japan won the seat

dta$seat[
  dta$id == 1440 &
    dta$cst == 186 &
    dta$pty == 3
] <- 0

dta$seat[
  dta$id == 1440 &
    dta$cst == 186 &
    dta$pty == 73
] <- 1


# In cst == 271 (Tokyo-15), a different independent won the seat

dta$seat[
  dta$id == 1440 &
    dta$cst == 271 &
    dta$pty == 6029
] <- 0

dta$seat[
  dta$id == 1440 &
    dta$cst == 271 &
    dta$pty == 6030
] <- 1


# The "Democratic Party of Japan" is coded as both pty == 73 and pty == 6081 in
# this election. As far as I can tell, it is the ordinary Democratic Party.

dta$pty[
  dta$id == 1440 &
    dta$cst == 188 &
    dta$pty_n == "Democratic Party of Japan"
] <- 73


# The label "Social Democratic Party" is coded as both pty == 73 and pty == 75
# in this election. Since the Democratic Party is 73, I will use 75.

dta$pty[
  dta$id == 1440 &
    dta$pty_n == "Social Democratic Party"
] <- 75
