
# Conduct unit tests to detect remaining errors

# Housekeeping ------------------------------------------------------------

# Create empty tibble to populate with test results

errors <-
  tibble(
    test =
      c(
        "m >= 1",
        "sum(s) == m",
        "sum(v) >= 1",
        "ns2 <= m",
        "nv0 >= ns0",
        "d <= sqrt( (nv2 + 1) / (2 * nv2) )",
        "d >= (1/sqrt(2)) * abs( pv[1] - ps[1])",
        "w <= 1 - 1 / nv2",
        "w >= 1 - sqrt(ns0 / nv2)",
        "s >= 1 | pv > tx",
        "cor(v, s, method = 'kendall') == T"
      ),
    errors = NA,
    cases = vector("list", length(test))
  )


# Split the data by id and cst

split_dta <- split(dta, paste0(dta$id, "_", dta$cst))



# Conduct tests -----------------------------------------------------------

## Test 1: m >= 1 ---------------------------------------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) all(x$m >= 1)
  ) |>
  unlist()


# Populate table error count

errors$errors[1] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[1]] <- names(index[index == FALSE])

}



## Test 2: sum(s) == m ----------------------------------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) sum(x$s) == unique(x$m)
  ) |>
  unlist()


# Populate table error count

errors$errors[2] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[2]] <- names(index[index == FALSE])

}



## Test 3: sum(v) >= 1 ----------------------------------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) sum(x$v) >= 1
  ) |>
  unlist()


# Populate table error count

errors$errors[3] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[3]] <- names(index[index == FALSE])

}



## Test 4: ns2 <= m -------------------------------------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) unique(x$ns2) <= unique(x$m) + .Machine$double.eps^0.5
  ) |>
  unlist()


# Populate table error count

errors$errors[4] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[4]] <- names(index[index == FALSE])

}



## Test 5: nv0 >= ns0 -----------------------------------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) unique(x$nv0) + .Machine$double.eps^0.5 >= unique(x$ns0)
  ) |>
  unlist()


# Populate table error count

errors$errors[5] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[5]] <- names(index[index == FALSE])

}



## Test 6: d <= sqrt( (nv2 + 1) / (2 * nv2) ) -----------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) unique(x$d) <= sqrt( (unique(x$nv2) + 1) / (2 * unique(x$nv2)) )
  ) |>
  unlist()


# Populate table error count

errors$errors[6] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[6]] <- names(index[index == FALSE])

}



## Test 7: d >= (1/sqrt(2)) * abs( pv[1] - ps[1]) -------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) unique(x$d) >= (1/sqrt(2)) * abs(max(x$pv) - max(x$ps))
  ) |>
  unlist()


# Populate table error count

errors$errors[7] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[7]] <- names(index[index == FALSE])

}



## Test 8: w <= 1 - 1 / nv2 -----------------------------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) unique(x$w) <= 1 - 1/unique(x$nv2) + .Machine$double.eps^0.5
  ) |>
  unlist()


# Populate table error count

errors$errors[8] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[8]] <- names(index[index == FALSE])

}


## Test 9: w >= 1 - sqrt(ns0 / nv2) ---------------------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x){

      unique(x$w) + .Machine$double.eps^0.5 >= 1 - sqrt( unique(x$ns0) / unique(x$nv2) )

    }
  ) |>
  unlist()


# Populate table error count

errors$errors[9] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[9]] <- names(index[index == FALSE])

}



## Test 10: s >= 1 | pv > tx ----------------------------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) all(ifelse(x$s > 0, x$s >= x$tx, TRUE))
  ) |>
  unlist()


# Populate table error count

errors$errors[10] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[10]] <- names(index[index == FALSE])

}


## Test 11: rank_size(v, s) == 0 ------------------------------------------

# Get cases where the test fails

index <-
  lapply(
    split_dta,
    \(x) rank_size(x$v, x$s)
  ) |>
  unlist()


# Populate table error count

errors$errors[11] <- length(index[index == FALSE])


# Populate table error cases

if(length(index[index == FALSE]) != 0){

  errors$cases[[11]] <- names(index[index == FALSE])

}
