
# Compute summary statistics

# Candidate level statistics ----------------------------------------------

# Compute the actual and effective number of vote and seat winning candidates,
# the district-level disproportionality, the number of wasted votes, and the
# thresholds of representation and exclusion

dta <-
  dta |>
  group_by(id, cst) |>
  mutate(
    cv0 = effective_parties(pv, 0),
    cs0 = effective_parties(ps, 0),
    cv2 = effective_parties(pv, 2),
    cs2 = effective_parties(ps, 2),
    d = disproportionality(pv, ps),
    w = sum(pv[s == 0])
  ) |>
  ungroup() |>
  mutate(
    tx = 1 / ( m + 1 ),
    tr = 1 / ( m * cv2 ),
    tmin = pmin(tx, tr)
  )


# Compute the same quantities at the party level

dta <-
  dta |>
  left_join(
    dta |>
      group_by(id, cst, pty) |>
      summarise(
        v = sum(v),
        s = sum(s),
        .groups = "drop_last"
      ) |>
      mutate(
        pv = v / sum(v),
        ps = s / sum(s)
      ) |>
      summarise(
        nv0 = effective_parties(pv, 0),
        ns0 = effective_parties(ps, 0),
        ns2 = effective_parties(ps, 2),
        nv2 = effective_parties(pv, 2),
        dp = disproportionality(pv, ps),
        wp = sum(pv[s == 0]),
        .groups = "drop"
      ),
    by = join_by(id, cst)
  )
