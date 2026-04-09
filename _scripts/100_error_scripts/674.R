# United States (September/November, 1918)

# Data from:
#
# https://en.wikipedia.org/wiki/1918_United_States_House_of_Representatives_elections

# In Illinois, the at-large district had a magnitude of 2.

dta$mag[
  dta$id == 674 &
    dta$cst == 58
] <- 2


# In Pennsylvania, the at-large district had a magnitude of 4.

dta$mag[
  dta$id == 674 &
    dta$cst == 317
] <- 4
