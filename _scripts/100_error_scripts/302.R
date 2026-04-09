
# Germany (September 1961)

# The district name is not consistent in Kassel (cst == 127)

dta$cst_n[
  dta$id == 302 &
    dta$cst == 127
] <- "Kassel"


# The district name is not consistent in Fritzlar-Homberg (cst == 129)

dta$cst_n[
  dta$id == 302 &
    dta$cst == 129
] <- "Fritzlar-Homberg"


# The district name is not consistent in Dillingen (cst == 238)

dta$cst_n[
  dta$id == 302 &
    dta$cst == 238
] <- "Dillingen"
