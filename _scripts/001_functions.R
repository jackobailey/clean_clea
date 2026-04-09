
# Convenience functions

# Peek at the Elections Archive data --------------------------------------

# Arguments
#
# id: The election ID you want to peek at
# cst: The constituency Id you want to peek at

peek <-
  function(
    id = NULL,
    cst = NULL,
    dta = NULL
  ){

    if(is.null(dta) == TRUE){
      dta <- get("dta", envir = parent.frame())
    }

    peek_dta <- dta[dta$id == id, ]

    if(is.null(cst) == F){
      peek_dta <- peek_dta[peek_dta$cst == cst, ]
    }

    peek_dta |>
      select(
        id,
        ctr_n,
        yr,
        mn,
        cst_n,
        cst,
        mag,
        can,
        pty,
        pty_n,
        cv1,
        pv1,
        seat
      ) |>
      arrange(desc(pv1))

  }



# Reallocate seats --------------------------------------------------------

# Arguments
#
# id: The election ID you want to peek at
# cst: The constituency Id you want to peek at
# method: The method you want to use to reallocate seats (see ?electoral::seats)

seats <-
  function(
    id = NULL,
    cst = NULL,
    method = NULL,
    dta = NULL
  ){

    if(is.null(dta) == TRUE){
      dta <- get("dta", envir = parent.frame())
    }

    electoral::seats(
      parties = dta$pty_n[dta$id == id & dta$cst == cst],
      votes = dta$pv1[dta$id == id & dta$cst == cst],
      n_seats = unique(dta$mag[dta$id == id & dta$cst == cst]),
      method = method
    ) |>
      arrange(desc(VOTES))

  }



# Compute effective parties -----------------------------------------------

# p: party shares
# a: alpha value over which to compute the effective number of parties. a = 1
#    corresponds to Wildgen's 'index of hyper-fractionalization' (exponentiated
#    Shannon entropy), a = 2 corresponds to the standard Laakso-Taagepera index
#    (exponentiated Rényi entropy of order 2).

effective_parties <- \(p, a = 2) 2^information::renyi_entropy(p, a)



# Compute disproportionality ----------------------------------------------

# v: party vote shares
# s: party seat shares

disproportionality <- \(v, s) sqrt( 0.5 * sum( ( v - s ) ^ 2, na.rm = T ) )



# Compute bounds on wasted votes where m == 1 -----------------------------

# r: Curve starting point
# s: Curve end point
# nv: Effective number of vote-winning parties

w_curve <- function(r, s, nv) {
  (s - 1 - sqrt(((s - r) / r) * (s / nv - 1))) / s
}


# Collapse Netherlands to nationwide district ------------------------------

# Arguments
#
# dta: The data frame to modify
# id: The election ID to collapse. This helper assumes that the election already
#     has usable party codes in the raw data. It can standardise either
#     already-national or district-level Dutch elections to a common
#     party-level nationwide format.

collapse_netherlands <-
  function(
    dta = NULL,
    id = NULL
  ){

    netherlands_id <-
      dta |>
      filter(id == !!id)

    if(all(netherlands_id$pty == -990 | is.na(netherlands_id$pty))){
      stop(
        "Netherlands election ",
        id,
        " does not have usable party coding for a party-level collapse."
      )
    }

    district_party_id <-
      netherlands_id |>
      filter(pty != -990) |>
      group_by(
        release,
        id,
        rg,
        ctr_n,
        ctr,
        yr,
        mn,
        sub,
        cst,
        pty_n,
        pty
      ) |>
      summarise(
        pv1 =
          if(all(pv1 == -990 | is.na(pv1))){
            -990
          } else{
            max(
              pv1[pv1 != -990 & is.na(pv1) == FALSE],
              na.rm = TRUE
            )
          },
        seat = sum(seat[seat > 0], na.rm = TRUE),
        .groups = "drop"
      )

    total_mag <-
      netherlands_id |>
      distinct(cst, mag) |>
      filter(mag > 0) |>
      summarise(
        mag = sum(mag, na.rm = TRUE),
        .groups = "drop"
      ) |>
      pull(mag)

    if(length(total_mag) == 0 | is.na(total_mag) | total_mag == 0){

      total_mag <-
        district_party_id |>
        summarise(
          mag = sum(seat[seat > 0], na.rm = TRUE),
          .groups = "drop"
        ) |>
        pull(mag)

    }

    if(length(total_mag) == 0 | is.na(total_mag) | total_mag == 0){
      total_mag <- -990
    }

    nationwide_id <-
      district_party_id |>
      group_by(
        release,
        id,
        rg,
        ctr_n,
        ctr,
        yr,
        mn,
        sub,
        pty_n,
        pty
      ) |>
      summarise(
        pv1 =
          if(all(pv1 == -990 | is.na(pv1))){
            -990
          } else{
            sum(
              pv1[pv1 != -990 & is.na(pv1) == FALSE],
              na.rm = TRUE
            )
          },
        seat = sum(seat, na.rm = TRUE),
        .groups = "drop"
      ) |>
      mutate(
        cst_n = "nationwide district",
        cst = 901,
        mag = total_mag,
        can = "-990",
        pev1 = -990,
        vot1 = -990,
        vv1 = -990,
        ivv1 = -990,
        to1 = -990,
        cv1 = -990,
        cvs1 = -990,
        pvs1 = -990,
        pev2 = -990,
        vot2 = -990,
        vv2 = -990,
        ivv2 = -990,
        to2 = -990,
        cv2 = -990,
        cvs2 = -990,
        pv2 = -990,
        pvs2 = -990
      ) |>
      select(
        release,
        id,
        rg,
        ctr_n,
        ctr,
        yr,
        mn,
        sub,
        cst_n,
        cst,
        mag,
        pty_n,
        pty,
        can,
        pev1,
        vot1,
        vv1,
        ivv1,
        to1,
        cv1,
        cvs1,
        pv1,
        pvs1,
        pev2,
        vot2,
        vv2,
        ivv2,
        to2,
        cv2,
        cvs2,
        pv2,
        pvs2,
        seat
      )

    dta |>
      filter(id != !!id) |>
      bind_rows(nationwide_id)

  }



# Collapse Cyprus rows to the party level ----------------------------------

# Arguments
#
# dta: The data frame to modify
# id: The election ID to collapse

collapse_cyprus <-
  function(
    dta = NULL,
    id = NULL
  ){

    cyprus_id <-
      dta |>
      filter(id == !!id) |>
      select(
        id,
        ctr_n,
        ctr,
        yr,
        mn,
        cst_n,
        cst,
        mag,
        pty_n,
        pty,
        pv1,
        seat
      ) |>
      group_by(id, cst_n, cst, pty_n, pty) |>
      mutate(seat = sum(seat, na.rm = TRUE)) |>
      ungroup() |>
      distinct()

    dta |>
      filter(id != !!id) |>
      bind_rows(cyprus_id)

  }



# Collapse New Zealand list votes ------------------------------------------

# Arguments
#
# dta: The data frame to modify
# id: The election ID to collapse
# mag: The district magnitude to assign
# seat_allocations: A named numeric vector of seat allocations by party code
# arrange_votes: Whether to sort by party vote after aggregation

collapse_nz_list <-
  function(
    dta = NULL,
    id = NULL,
    mag = NULL,
    seat_allocations = NULL,
    arrange_votes = FALSE
  ){

    nz_list <-
      dta |>
      filter(
        id == !!id,
        cst >= 900
      ) |>
      group_by(
        release,
        id,
        rg,
        ctr_n,
        ctr,
        yr,
        mn,
        pty_n,
        pty
      ) |>
      summarise(
        pv1 = sum(pv1),
        .groups = "drop"
      ) |>
      mutate(
        mag = mag,
        cv1 = -990,
        seat = 0,
        cst = 900,
        cst_n = "national list"
      )

    if(arrange_votes == TRUE){

      nz_list <-
        nz_list |>
        arrange(desc(pv1))

    }

    if(is.null(seat_allocations) == FALSE){

      seat_index <-
        match(
          nz_list$pty,
          as.numeric(names(seat_allocations))
        )

      nz_list$seat[is.na(seat_index) == FALSE] <-
        unname(seat_allocations[seat_index[is.na(seat_index) == FALSE]])

    }

    dta |>
      filter(!(id == !!id & cst >= 900)) |>
      bind_rows(nz_list)

  }



# Impute first-past-the-post seats -----------------------------------------

# Arguments
#
# dta: The data frame to modify
# id: The election ID to impute
# csts: Optional constituency IDs to impute within the election
# votes: The vote variable to use

impute_fptp_seats <-
  function(
    dta = NULL,
    id = NULL,
    csts = NULL,
    votes = "pv1"
  ){

    if(is.null(csts) == TRUE){

      csts <-
        dta$cst[
          dta$id == id
        ] |>
        unique()

    }

    dta |>
      group_by(id, cst) |>
      mutate(
        seat =
          case_when(
            id == !!id &
              cst %in% csts &
              .data[[votes]] == max(.data[[votes]], na.rm = TRUE) ~ 1,
            id == !!id &
              cst %in% csts ~ 0,
            TRUE ~ seat
          )
      ) |>
      ungroup()

  }
