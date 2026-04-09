
# Angola (August, 2022)

# The "Consulados" district is for Angolans abroad and it seems that the votes
# weren't allocated to their own seat. It literally means "consulates".
#
# https://resultados2022eleicoesgerais.cne.ao/resultados/5.html

dta <-
  dta |>
  filter(!(id == 2033 & cst_n == "Consulados"))
