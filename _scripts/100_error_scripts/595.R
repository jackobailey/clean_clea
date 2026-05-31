# Sweden (September, 1964)

# Data from:
#
# SCB, Valstatistik 1961-1964
# https://web.archive.org/web/20150924122655/http://www.scb.se/Grupp/Hitta_statistik/Historisk_statistik/_Dokument/Valstatistiken/Valstatistik%20Riksdagsmannavalen%201961-1964%20I.pdf

patch <- readr::read_csv(here::here("_data",
                                    "man",
                                    "swe_1964.csv"),
                         show_col_types = FALSE)


## Patch contains information on magnitudes, and seats won by
##
## Högern (the Right):
## Centerpartiet (ex Bondeforbundet, Agrarian)
## Folkpartiet (People's)
## Social Democrats
## Communists
##

## Patch magnitudes first
patch_mags <- patch[, c("cst", "mag")]
patch_mags$id <- 595

if (anyDuplicated(patch_mags[, c("cst")])) {
    stop("Duplicate entries in patches for Sweden 1948")
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
    select(cst, H, C, F, S, K) |> 
    tidyr::pivot_longer(cols = c(H, C, F, S, K),
                        values_to = "seat") |>
    mutate(pty = case_when(name == "H" ~ 6,
                           name == "C" ~ 1,
                           name == "F" ~ 3,
                           name == "S" ~ 21,
                           name == "K" ~ 18)) |>
    dplyr::select(cst, pty, seat) |>
    mutate(id = 595)

dta <- dta |>
    left_join(patch,
              by = join_by(id, cst, pty),
              suffix = c("", ".patch")) |>
    mutate(seat = case_when((is.na(seat) | seat == -990) ~ seat.patch,
                            TRUE ~ seat)) |>
    select(-seat.patch)

rm(patch)
