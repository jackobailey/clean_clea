
# Cameroon (June, 2002)

# District magnitudes come from this journal article:
# https://www.tandfonline.com/doi/abs/10.1080/13510347.2011.553361
#
# The electoral system comes from this website:
# https://www.electionpassport.com/electoral-systems/cameroon/

# In diamare-north (cst == 6), the district magnitude was 1 and, since it is the
# largest party, we can assume that the seat was won by the "rassemblement
# démocratique  du peuple camerounais" (10).

dta$mag[
  dta$id == 21 &
    dta$cst == 6
] <- 1

dta$seat[
  dta$id == 21 &
    dta$cst == 6 &
    dta$pty == 10
] <- 1


# In diamare-rural center (cst == 7), the district magnitude was 2 and, since
# Cameroon uses party block voting, we know that the two seats were won by the
# "rassemblement démocratique  du peuple camerounais" (10).

dta$mag[
  dta$id == 21 &
    dta$cst == 7
] <- 2

dta$seat[
  dta$id == 21 &
    dta$cst == 7 &
    dta$pty == 10
] <- 2


# In diamare-south (cst == 8), the district magnitude was 1 and, since it is the
# largest party, we can assume that the seat was won by the "rassemblement
# démocratique  du peuple camerounais" (10).

dta$mag[
  dta$id == 21 &
    dta$cst == 8
] <- 1

dta$seat[
  dta$id == 21 &
    dta$cst == 8 &
    dta$pty == 10
] <- 1


# In diamare-urban center (cst == 9), the district magnitude was 1 and, since it
# is the largest party, we can assume that the seat was won by the
# "rassemblement démocratique  du peuple camerounais" (10).

dta$mag[
  dta$id == 21 &
    dta$cst == 9
] <- 1

dta$seat[
  dta$id == 21 &
    dta$cst == 9 &
    dta$pty == 10
] <- 1
