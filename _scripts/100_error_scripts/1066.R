
# Peru (April, 2001)

# In Ayacucho, the Unidad Nacional and Partido Aprista Peruano have been omitted
# https://es.wikipedia.org/wiki/Ayacucho_(distrito_electoral_del_Congreso_de_la_República)#Elecciones_parlamentarias_de_2001

dta <-
  dta |>
  add_row(
    id = 1066,
    ctr = 604,
    ctr_n = "Peru",
    yr = 2001,
    mn = 4,
    cst_n = "Ayacucho",
    cst = 5,
    mag = 3,
    pty = 5006,
    pty_n = "unidad nacional",
    pv1 = 23921,
    seat = 1
  ) |>
  add_row(
    id = 1066,
    ctr = 604,
    ctr_n = "Peru",
    yr = 2001,
    mn = 4,
    cst_n = "Ayacucho",
    cst = 5,
    mag = 3,
    pty = 101,
    pty_n = "partido aprista peruano",
    pv1 = 23359,
    seat = 0
  )


# In Amazonas, peru posible and partido aprista peruano won 1 seat each
# https://es.wikipedia.org/wiki/Elecciones_parlamentarias_de_Perú_de_2001

dta$seat[
  dta$id == 1066 &
    dta$cst_n == "Amazonas" &
    dta$pty_n == "peru posible"
] <- 1

dta$seat[
  dta$id == 1066 &
    dta$cst_n == "Amazonas" &
    dta$pty_n == "partido aprista peruano"
] <- 1
