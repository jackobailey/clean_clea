
# Turkey (November, 2015)

# The "Izmir 2" label includes some white space or something that messes up the
# code. I will rename it to prevent this from happening.

dta$cst_n[
  dta$id == 1679 &
    dta$cst == 45
] <- "Izmir 2"
