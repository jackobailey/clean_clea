
# Greece (July, 2019)

# Election ID: 1851
#
# cst == 26 is labelled "Greece (At-Large District)".
#
# This is the nationwide state-deputies list, i.e. the countrywide upper-tier
# allocation unit rather than an ordinary territorial district. Because it is
# coded below 900, it looks inconsistent with the codebook.
#
# The English rendering "At-Large District" points to a national/top-tier seat
# allocation unit, and the Greek concept here is the state-wide list
# ("Επικρατείας"), not a normal territorial constituency.

dta$cst[
  dta$id == 1851 &
    dta$cst == 26
] <- 901
