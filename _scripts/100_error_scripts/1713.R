
# Fiji (September, 2014)

# Data from:
#
# https://fijivillage.com/news/Bainimarama-takes-oath-as-Fijis-democratically-elected-PM-2ksr59/

# Viliame Manakiwai Tagivetaua won a seat

dta$seat[
  dta$id == 1713 &
    dta$can == "Viliame Manakiwai Tagivetaua"
] <- 1


# Anare Tuidraki Vadei won a seat

dta$seat[
  dta$id == 1713 &
    dta$can == "Anare Tuidraki Vadei"
] <- 1


# Laisenia Bale Tuitubou didn't win a seat (they replace Jiko Luveni later)

dta$seat[
  dta$id == 1713 &
    dta$can == "Laisenia Bale Tuitubou"
] <- 0


# I will give the national constituency a cst value of 901 to make it consistent
# with other national constituencies

dta$cst[
  dta$id == 1713 &
    dta$cst == 1
] <- 901
