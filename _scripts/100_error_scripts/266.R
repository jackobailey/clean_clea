
# Finland, (March 1999)

# The label "suomen sosialidemokraattinen puolue" is coded as both pty == 24 and
# pty == 41 in this election. The case where pty == 41 is actually the Finnish
# pensioners' party. I will change the label accordingly.
#
# https://en.wikipedia.org/wiki/Helsinki_(parliamentary_electoral_district)#1999
# https://en.wikipedia.org/wiki/Oulu_(parliamentary_electoral_district)#1999

dta$pty_n[
  dta$id == 266 &
    dta$pty == 41
] <- "pensioners' party"


# Parties that did not win a seat are coded as -990 instead of 0

dta$seat[
  dta$id == 266 &
    dta$seat == -990
] <- 0
