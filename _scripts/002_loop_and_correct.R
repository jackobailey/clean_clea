
# Loop over IDs and correct errors in the data

# Correct errors ----------------------------------------------------------

# Get election IDs

id_order <-
  dta$id |>
  unique() |>
  as.character()


# Get paths to country-specific error scripts

error_paths <-
  here(
    "_scripts",
    "100_error_scripts"
  ) |>
  list.files(full.names = T)


# Split the data by ID so that each script only modifies the rows it needs.

dta <- split(dta, dta$id)


# Correct errors

for(i in error_paths){

  # Infer the election ID from the script filename, e.g. "1279.R" -> 1279.

  target_ids <-
    basename(i) |>
    tools::file_path_sans_ext() |>
    as.numeric()

  # Coerce to character so the ID matches the names in the split dta list.

  target_ids <-
    as.character(target_ids)

  # Pull the relevant election rows back out of the split list.

  script_dta <-
    bind_rows(
      dta[target_ids]
    )

  # Create a temporary environment that exposes the subset as dta so the
  # election-specific script can run unchanged.

  script_env <-
    list2env(
      list(dta = script_dta),
      parent = globalenv()
    )

  # Run the election-specific correction script inside that temporary
  # environment.

  sys.source(i, envir = script_env)

  # Split the corrected subset back into a named list by election ID.

  split_script_dta <-
    split(
      script_env$dta,
      script_env$dta$id
    )

  # Write the corrected election back into dta, or remove it if the
  # script dropped the election entirely.

  for(j in target_ids){

    if(j %in% names(split_script_dta)){

      dta[[j]] <-
        split_script_dta[[j]]

    } else{

      dta[[j]] <- NULL

    }

  }

}


# Recombine the corrected list of election-level data frames back into one
# archive-wide object, preserving the original ID order where possible.

dta <-
  bind_rows(
    dta[c(
      id_order[id_order %in% names(dta)],
      setdiff(names(dta), id_order)
    )]
  )



# Save data to disk -------------------------------------------------------

# Save cleaned CLEA data to a compressed .rds file

write_rds(
  dta,
  here(
    "_data",
    "proc",
    "clean_clea.rds"
  ),
  compress = "gz"
)
