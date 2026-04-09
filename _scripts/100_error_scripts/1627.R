
# Côte d'Ivoire (December, 2011)

# "Kouetinfla Et Sinfra, Communes Et Sous-Prefectures" does not have a unique
# cst and is mixed in with "Kouassi-Kouassikro, Communes Et Sous-Prefecture". I
# will set it such that cst == 202

dta$cst[
  dta$id == 1627 &
    dta$cst_n == "Kouetinfla Et Sinfra, Communes Et Sous-Prefectures"
] <- 201
