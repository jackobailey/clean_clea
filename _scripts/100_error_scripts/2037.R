
# Bolivia (September, 2020)

# Election ID: 2037
#
# The following cst values are coded below 900 even though, in the mixed
# Bolivian system, these department names are the plurinominal department tier
# rather than ordinary single-member circunscripciones. In the same file, the
# comparable department tier is coded 901-909 in earlier elections.
#
# Language/context:
# - The numbered "CIRCUMSCRIPTION" entries are the lower territorial districts.
# - The bare department names BENI, CHUQUISACA, COCHABAMBA, LA PAZ, ORURO,
#   PANDO, POTOSI, SANTA CRUZ, and TARIJA correspond to the departmental
#   upper tier.
#
# Flagged cases:
# - cst == 1: BENI
# - cst == 2: CHUQUISACA
# - cst == 66: COCHABAMBA
# - cst == 74: LA PAZ
# - cst == 75: ORURO
# - cst == 76: PANDO
# - cst == 77: POTOSI
# - cst == 78: SANTA CRUZ
# - cst == 79: TARIJA

dta$cst[
  dta$id == 2037 &
    dta$cst %in% c(1, 2, 66, 74:79)
] <-
  match(
    dta$cst_n[dta$id == 2037 & dta$cst %in% c(1, 2, 66, 74:79)],
    unique(dta$cst_n[dta$id == 2037 & dta$cst %in% c(1, 2, 66, 74:79)])
  ) + 900
