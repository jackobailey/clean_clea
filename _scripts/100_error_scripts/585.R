# Sweden (1928)

# Data from Tab BB, https://web.archive.org/web/20150924122135/http://www.scb.se/Grupp/Hitta_statistik/Historisk_statistik/_Dokument/Valstatistiken/Valstatistik%20Riksdagsmannavalen%201925%201926%201927%201928.pdf

patch <- readr::read_csv(here::here("_data",
                                    "man",
                                    "swe_1928.csv"),
                         show_col_types = FALSE)

## Patch contains information on magnitudes, and seats won by
##
## Högern (the Right):
## Bondeförbundet (Agrarian)
## Liberals
## Free-minded national association
## Social Democrats
## Communists

## Patch magnitudes first
patch_mags <- patch[, c("cst", "mag")]
patch_mags$id <- 585

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
    select(cst, H, B, L, Fri, SAP, K) |>
    tidyr::pivot_longer(cols = c(H, B, L, Fri, SAP, K),
                        values_to = "seat") |>
    mutate(pty = case_when(name == "H" ~ 6,
                           name == "B" ~ 1,
                           name == "Fri" ~ 5,
                           name == "SAP" ~ 21,
                           name == "L" ~ 19,
                           name == "K" ~ 8)) |>
    dplyr::select(cst, pty, seat) |>
    mutate(id = 585)

dta <- dta |>
    left_join(patch,
              by = join_by(id, cst, pty),
              suffix = c("", ".patch")) |>
    mutate(seat = case_when((is.na(seat) | seat == -990) ~ seat.patch,
                            TRUE ~ seat)) |>
    select(-seat.patch)

rm(patch)
