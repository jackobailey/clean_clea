
# Korea (April, 2004)

# Data from:
#
# https://ko.wikipedia.org/wiki/대한민국_제17대_국회의원_선거
# Click through to district-level results

# There are a few places that have similar names, such as 'buk-gu eul', 'buk-gu
# gap', 'dong-gu', 'jung-gu' and so on. Presumably, these are common names or
# have some other meaning. To make them easier to distinguish, I will add the
# region name to them.

dta$cst_n[
  dta$id == 1047 &
    dta$cst %in% c(
      17, 18, 21, 22, 50, 51, 52,
      133, 134, 135, 154, 155, 156,
      157, 158, 159, 185, 186, 187,
      188, 191, 192
    )
] <-
  paste0(
    dta$cst_n[
      dta$id == 1047 &
        dta$cst %in% c(
          17, 18, 21, 22, 50, 51, 52,
          133, 134, 135, 154, 155, 156,
          157, 158, 159, 185, 186, 187,
          188, 191, 192
        )
    ],
    " (",
    dta$sub[
      dta$id == 1047 &
        dta$cst %in% c(
          17, 18, 21, 22, 50, 51, 52,
          133, 134, 135, 154, 155, 156,
          157, 158, 159, 185, 186, 187,
          188, 191, 192
        )
    ],
    ")"
  )
