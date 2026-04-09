
# Peru (April, 1985)

# Data from:
#
# https://es.wikipedia.org/wiki/Anexo:Resultados_de_las_elecciones_parlamentarias_de_Per%C3%BA_de_1985#Puno
# https://es.wikipedia.org/wiki/Anexo:Resultados_de_las_elecciones_parlamentarias_de_Per%C3%BA_de_1985#Callao

# In Puno, Izquierda Nacionalista won 1 seat.

dta$seat[
  dta$id == 1064 &
    dta$cst == 22 &
    dta$pty == 58
] <- 1


# In Callao, the district magnitude was 7.

dta$mag[
  dta$id == 1064 &
    dta$cst == 7
] <- 7
