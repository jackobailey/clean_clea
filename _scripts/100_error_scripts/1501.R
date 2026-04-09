
# Sweden (September, 2010)

# In östergötlands län, the district magnitude was 15, not 5

dta$mag[
  dta$id == 1501 &
    dta$cst == 14
] <- 15
