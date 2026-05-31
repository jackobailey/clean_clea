# Sweden (September, 1940)

# Data from:
#
# Svenska Dagbladets Årsbok / Adertonde årgången (händelserna 1940)
# https://runeberg.org/svda/1940/0123.html

patch <- readr::read_csv(here::here("_data",
                                    "man",
                                    "swe_1940.csv"),
                         show_col_types = FALSE)


## Patch contains information on magnitudes, and seats won by
##
## Högern (the Right):
## Bondeförbundet (Agrarian)
## Folkpartiet (People's)
## Social Democrats
## Communists
##

## Patch magnitudes first
patch_mags <- patch[, c("cst", "mag")]
patch_mags$id <- 588

if (anyDuplicated(patch_mags[, c("cst")])) {
    stop("Duplicate entries in patches for Sweden 1940")
}

dta <- dta |>
    left_join(patch_mags,
              by = join_by(id, cst),
              suffix = c("", ".patched"),
              relationship = "many-to-one") |>
    mutate(mag = case_when((is.na(mag) | mag == -990) ~ mag.patched,
                           TRUE ~ mag)) |>
    select(-mag.patched)

rm(patch_mags)

## Now patch party totals
patch <- patch |>
    select(cst, ends_with("_mandat")) |>
    mutate(across(ends_with("_mandat"), \(x) coalesce(x, 0L))) |>
    tidyr::pivot_longer(cols = ends_with("_mandat"),
                        values_to = "seat") |>
    mutate(pty = case_when(name == "H_mandat" ~ 6,
                           name == "B_mandat" ~ 1,
                           name == "Fp_mandat" ~ 3,
                           name == "S_mandat" ~ 21,
                           name == "K_mandat" ~ 18)) |>
    dplyr::select(cst, pty, seat) |>
    mutate(id = 588)

dta <- dta |>
    left_join(patch,
              by = join_by(id, cst, pty),
              suffix = c("", ".patch")) |>
    mutate(seat = case_when((is.na(seat) | seat == -990) ~ seat.patch,
                            TRUE ~ seat)) |>
    select(-seat.patch)

rm(patch)
