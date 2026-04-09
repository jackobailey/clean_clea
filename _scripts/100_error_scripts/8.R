# Brazil (January, 1947)

# Data from:
#
# https://www.tse.jus.br/institucional/escola-judiciaria-eleitoral/publicacoes/revistas-da-eje/artigos/revista-eletronica-eje-n.-4-ano-4/sistemas-eleitorais-brasileiros
# https://www2.camara.leg.br/a-camara/conheca/numero-de-deputados-por-estado

# Brazil elects federal deputies in state-wide proportional districts, but the
# CLEA data for this election do not include the district magnitudes or seat
# winners, so I will remove it.

dta <-
  dta |>
  filter(id != 8)
