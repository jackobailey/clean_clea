
# Colombia (March, 2006)

# In la guajira, the Partido Conservador Colombiano only won 1 seat
#
# https://es.wikipedia.org/wiki/Elecciones_legislativas_de_Colombia_de_2006#Representantes_a_la_cámara_electos
# https://biblioteca.registraduria.gov.co/opac_css/doc_num.php?explnum_id=136
# https://www.researchgate.net/publication/344365833_Elecciones_presidenciales_y_de_Congreso_de_la_Republica_1958-2018_las_elecciones_de_todos_los_colombianos

dta$seat[
  dta$id == 159 &
    dta$cst == 19 &
    dta$pty == 95
] <- 1


# In cst == 9 (caqueta), pty == 102 won 13,590 votes, not 1,359.

dta$pv1[
  dta$id == 159 &
    dta$cst == 9 &
    dta$pty == 102
] <- 13590


# In cst == 26 (risaralda), pty == 102 won 50,480 votes, not 5,048.

dta$pv1[
  dta$id == 159 &
    dta$cst == 26 &
    dta$pty == 102
] <- 50480
