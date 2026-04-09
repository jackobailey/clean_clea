# United Kingdom (December, 1918)

# Data from:
#
# https://api.parliament.uk/uk-general-elections/elections/10516

# In cst == 220 (Essex, Saffron Walden), Liberals (Coalition) won 10628 votes

dta$cv1[
  dta$id == 638 &
    dta$cst == 220 &
    dta$pty == 67
] <- 10628

dta$pv1[
  dta$id == 638 &
    dta$cst == 220 &
    dta$pty == 67
] <- 10628
