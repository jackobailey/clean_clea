
# Iceland (June, 1946)

# Data from:
#
# https://timarit.is/page/6645589?iabr=on#page/n0/mode/2up

# In austur-skaptafellssýsla, the framsóknarflokkur are included twice. The case
# with zero seats is incorrect, so I'll remove it.

dta <-
  dta |>
  filter(
    !(id == 358 & cst == 3 & pty == 8 & seat == 0)
  )


# In suòur-pingeyjarsýsla, the framsóknarflokkur are included twice. The case
# with zero seats is incorrect, so I'll remove it.

dta <-
  dta |>
  filter(
    !(id == 358 & cst == 21 & pty == 8 & seat == 0)
  )
