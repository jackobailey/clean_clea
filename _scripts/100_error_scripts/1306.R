
# St. Vincent and the Grenadines (August, 1954)

# In North Windward, Ebenezer Joshua from the People's Political Party won the
# seat
#
# https://es.wikipedia.org/wiki/Elecciones_generales_de_San_Vicente_y_las_Granadinas_de_1954

dta$seat[
  dta$id == 1306 &
    dta$cst == 5 &
    dta$pty == 7
] <- 1


# In South Windward, Levi Calvert Latham won the seat
#
# https://es.wikipedia.org/wiki/Elecciones_generales_de_San_Vicente_y_las_Granadinas_de_1954

dta$seat[
  dta$id == 1306 &
    dta$cst == 7 &
    dta$pty == 6014
] <- 1
