
# Lebanon (August, 1996)

# Data from:
#
# https://monthlymagazine.com/cms/upload/magazine/64a6854c325bd391_file.pdf

# Jbeil had 3 seats in 1996.

dta$mag[
  dta$id == 2270 &
    dta$cst == 10
] <- 3


# 7 candidates won a seat in the 6-seat Western Beqa'a-Rashaya district. The
# magazine above says that the 1996 Western Beqa'a-Rashaya rerun transferred
# the Maronite seat from Henri Chedid to Robert Ghanem. This suggests that
# Chedid won at the election, but that (afterwards) Ghanem was awarded the seat
# (i.e. he did not win a seat here.)

dta$seat[
  dta$id == 2270 &
    dta$cst == 21 &
    dta$can == "Ghanem Robert Iskandar"
] <- 0
