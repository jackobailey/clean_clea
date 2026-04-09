# Brazil (October, 2018)

# Data from:
#
# https://www.tse.jus.br/institucional/escola-judiciaria-eleitoral/publicacoes/revistas-da-eje/artigos/revista-eletronica-eje-n.-4-ano-4/sistemas-eleitorais-brasileiros
# https://dadosabertos.tse.jus.br/dataset/resultados-2018
# https://dadosabertos.tse.jus.br/dataset/candidatos-2018

# Brazil used open-list proportional representation, but the CLEA data do not
# disaggregate candidates, so it is not possible to compute the correct
# threshold of representation. I will remove this election.

dta <-
  dta |>
  filter(id != 1843)
