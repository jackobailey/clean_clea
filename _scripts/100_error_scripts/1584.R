
# Guyana (May, 2015)

# The district magnitude in District 08 (Potaro-Siparuni) was 1
#
# https://en.wikipedia.org/wiki/2015_Guyanese_general_election#National_Assembly

dta$mag[
  dta$id == 1584 &
    dta$cst == 8
] <- 1

# In District 08 (Potaro-Siparuni) a partnership for national unity, alliance
# for change won the seat

dta$seat[
  dta$id == 1584 &
    dta$cst == 8 &
    dta$pty_n == "a partnership for national unity, alliance for change"
] <- 1


# In District 06 (East Berbice-Corentyne) a partnership for national unity,
# alliance for change won a seat and teh magnitude was 3

dta$seat[
  dta$id == 1584 &
    dta$cst == 6 &
    dta$pty_n == "a partnership for national unity, alliance for change"
] <- 1

dta$mag[
  dta$id == 1584 &
    dta$cst == 6
] <- 3
