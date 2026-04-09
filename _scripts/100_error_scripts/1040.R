
# Germany (September, 2005)

# In Schleswig-Holstein, the district magnitude was 11
# https://en.wikipedia.org/wiki/2005_German_federal_election#List_seats

dta$mag[
  dta$id == 1040 &
    dta$cst == 901
] <- 11
