
# Bolivia (July 1985)

# Data from:
#
# https://es.wikipedia.org/wiki/Elecciones_generales_de_Bolivia_de_1985#Resultados[2]

# In cst == 7 (potosi), the PS-1 won 4,279 votes, not 1479 votes (Ramiro Velasco
# Romero) was the presidential candidate

dta$pv1[
  dta$id == 148 &
    dta$cst == 7 &
    dta$pty == 38
] <- 4279
