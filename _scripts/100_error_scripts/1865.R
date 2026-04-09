
# Nigeria (November, 2019)

# Data from:
#
# https://www.stears.co/elections/2019/house-of-representatives

# In Idemili North/Idemili South, IBEZI IFEANYI ANTHONY won the seat, not
# CHARLES CHINWENDU ODEDO

dta$seat[
  dta$id == 1865 &
    dta$cst == 170 &
    dta$can == "CHARLES CHINWENDU ODEDO"
] <- 0

dta$seat[
  dta$id == 1865 &
    dta$cst == 170 &
    dta$can == "IBEZI IFEANYI ANTHONY"
] <- 1


# In Igabi, the All Progressives Congress won, not YUSUF ADAMU

dta$seat[
  dta$id == 1865 &
    dta$cst == 176 &
    dta$can == "YUSUF ADAMU"
] <- 0

dta$seat[
  dta$id == 1865 &
    dta$cst == 176 &
    dta$pty_n == "All Progressives Congress"
] <- 1


# In Sabon Gari, MUHAMMAD GARBA DATTI won, not BASHIR SAKADADI IBRAHIM

dta$seat[
  dta$id == 1865 &
    dta$cst == 321 &
    dta$can == "BASHIR SAKADADI IBRAHIM"
] <- 0

dta$seat[
  dta$id == 1865 &
    dta$cst == 321 &
    dta$can == "MUHAMMAD GARBA DATTI"
] <- 1


# In Ajeromi/Ifelodun, ORJI RITA won, not KOLAWOLE TAIWO MUSIBAU

dta$seat[
  dta$id == 1865 &
    dta$cst == 22 &
    dta$can == "KOLAWOLE TAIWO MUSIBAU"
] <- 0

dta$seat[
  dta$id == 1865 &
    dta$cst == 22 &
    dta$can == "ORJI RITA"
] <- 1


# In Irepo/Orelope/Olorunsogo, OJERINDE OLUMIDE ABIODUN won, not MICHAEL ADEROJU
# OKUNLADE

dta$seat[
  dta$id == 1865 &
    dta$cst == 200 &
    dta$can == "MICHAEL ADEROJU OKUNLADE"
] <- 0

dta$seat[
  dta$id == 1865 &
    dta$cst == 200 &
    dta$can == "OJERINDE OLUMIDE ABIODUN"
] <- 1


# In Yola North/Yola South/Girei, ABDULRAUF ABDUL KABIR MODDIBO won, not JAFARU
# SULEIMAN RIBADU

dta$seat[
  dta$id == 1865 &
    dta$cst == 355 &
    dta$pty_n == "JAFARU SULEIMAN RIBADU"
] <- 0

dta$seat[
  dta$id == 1865 &
    dta$cst == 355 &
    dta$pty_n == "ABDULRAUF ABDUL KABIR MODDIBO"
] <- 1


# In Aboh Mbaise/Ngor Okpala, AMAJI RIONWU BYEDEN.O won, not BEDE UCHENNA EKE

dta$seat[
  dta$id == 1865 &
    dta$cst == 7 &
    dta$pty_n == "BEDE UCHENNA EKE"
] <- 0

dta$seat[
  dta$id == 1865 &
    dta$cst == 7 &
    dta$pty_n == "AMAJI RIONWU BYEDEN.O"
] <- 1


# In Bogoro/Dass/Tawafa, some candidates that received very few votes remain
# unknown, so there are duplicates but they appear valid
# https://web.archive.org/web/20241213104738/https://www.inecnigeria.org/wp-content/uploads/2019/10/DASS-TAFAWA-BALEWA-BOGORO.pdf

# In Ogoja/Yalaa, some candidates that received very few votes remain unknown,
# so there are duplicates but they appear valid
# https://web.archive.org/web/20251118012552/https://www.inecnigeria.org/wp-content/uploads/2019/10/OGOJA_YALA.pdf

# In Dala, some candidates that received very few votes remain unknown, so there
# are duplicates but they appear valid
# https://web.archive.org/web/20250613060616/https://www.inecnigeria.org/wp-content/uploads/2019/10/DALA.pdf

