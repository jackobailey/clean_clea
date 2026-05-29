
# Compute summary statistics

# Candidate level statistics ----------------------------------------------

# Compute the actual and effective number of vote and seat winning competitive
# units, the disproportionality, the number of wasted votes, and the thresholds
# of representation and exclusion

dta <-
  dta |>
  group_by(id, cst) |>
  mutate(
    nv0 = sum(pv > 0),
    ns0 = sum(ps > 0),
    nv2 = effective_parties(pv),
    ns2 = effective_parties(ps),
    d = disproportionality(pv, ps),
    w = sum(pv[s == 0])
  ) |>
  ungroup() |>
  mutate(
    tx = 1 / ( m + 1 ),
    tr = 1 / ( m * nv2 ),
    tmin = pmin(tx, tr)
  )
