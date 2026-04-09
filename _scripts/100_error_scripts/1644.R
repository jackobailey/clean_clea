
# Maldives (March, 2014)

# Data from:
#
# https://stat.elections.gov.mv/Home/PE2014

# Bileydhoo Dhaaira doesn't have a unique cst value, so giving it 86.

dta$cst[
  dta$id == 1644 &
    dta$cst_n == "Bileydhoo Dhaaira"
] <- 86


# In Feydhoo DhaaiMaalhosmadulu Uthuruburi, the Progressive Party of Maldives
# won the seat

dta$seat[
  dta$id == 1644 &
    dta$cst_n == "Feydhoo DhaaiMaalhosmadulu Uthuruburi" &
    dta$pty_n == "Maldivian Democratic Party"
] <- 0

dta$seat[
  dta$id == 1644 &
    dta$cst_n == "Feydhoo DhaaiMaalhosmadulu Uthuruburi" &
    dta$pty_n == "Progressive Party of Maldives"
] <- 1
