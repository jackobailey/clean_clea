
# Albania (June 2001)

# Data from:
#
# https://cec.org.al/zgjedhjet-per-kuvend-2001/
# https://cec.org.al/Portals/0/Documents/CEC%202013/zgjedhje-per-kuvend/2001/rezultate_2001/rezultatet/KANDIDATET.HTM

# There was no second round at this electino, but in Bashkia Gramsh (cst == 57)
# and Bashkia Divjakà (cst == 63), two second round vote counts are -996 and not
# -990

dta$pv2[
  dta$id == 966 &
    dta$cst == 57 &
    dta$pty == 49
] <- -990

dta$cv2[
  dta$id == 966 &
    dta$cst == 57 &
    dta$pty == 49
] <- -990


dta$pv2[
  dta$id == 966 &
    dta$cst == 63 &
    dta$pty == 49
] <- -990

dta$cv2[
  dta$id == 966 &
    dta$cst == 63 &
    dta$pty == 49
] <- -990
