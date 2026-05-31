# Sweden (September, 1968)

# Data from:
#
# SCB, Valstatistik 1965-1968
# https://web.archive.org/web/20150924122727/http://www.scb.se/Grupp/Hitta_statistik/Historisk_statistik/_Dokument/Valstatistiken/Valstatistik%20Riksdagsmannavalen%201965-1968%201.pdf

patch <- readr::read_csv(here::here("_data",
                                    "man",
                                    "swe_1968.csv"),
                         show_col_types = FALSE)


## Patch contains information on magnitudes, and seats won by
##
## Högern (the Right):
## Centerpartiet (ex Bondeforbundet, Agrarian)
## Folkpartiet (People's)
## Social Democrats
## Samling 68 (borgerlig coalition)
## Communists
## Mp (Mittenpartiet, borgerlig coalition)
## KDS (Kristendemokratisksamlig)

## Patch magnitudes first
patch_mags <- patch[, c("cst", "mag")]
patch_mags$id <- 596

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
## There is an awkward issue regarding Samling 68, the coalition of the borgerlig parties in Malmö / Fyrstadskretsen
## and mittenpartiet. I have omitted these parties for the moment. 
patch <- patch |>
    select(cst, H, C, F, S, S68, Mp, K) |> 
    tidyr::pivot_longer(cols = c(H, C, F, S68, Mp, S, K),
                        values_to = "seat") |>
    mutate(pty = case_when(name == "H" ~ 6,
                           name == "C" ~ 1,
                           name == "F" ~ 3,
                           name == "S" ~ 21,
                           name == "K" ~ 18)) |>
    dplyr::select(cst, pty, seat) |>
    mutate(id = 596)

dta <- dta |>
    left_join(patch,
              by = join_by(id, cst, pty),
              suffix = c("", ".patch")) |>
    mutate(seat = case_when((is.na(seat) | seat == -990) ~ seat.patch,
                            TRUE ~ seat)) |>
    select(-seat.patch)

### The current CLEA data assumes that centerpartiet wins the lions share in Gotland (CST 3)
dta$seat[which(dta$id == 596 &
               dta$pty == 2 &
               dta$cst == 3)] <- 2

### In Malmö/Fyrstadskretsen (CST 13), current CLEA data assumes that Mp is essentially centerpartiet, so they get one seat
dta$seat[which(dta$id == 596 &
               dta$pty == 2 &
               dta$cst == 13)] <- 1

### For the remaining 4 borgerlig seats, these split in the ratio 2:2
dta$seat[which(dta$id == 596 &
               dta$pty %in% c(3, 6) &
               dta$cst == 13)] <- 2

rm(patch)
