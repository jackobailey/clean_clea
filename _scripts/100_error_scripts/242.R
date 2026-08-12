### Finland (March 1919)

### Data from https://en.wikipedia.org/wiki/1919_Finnish_parliamentary_election

### Data from https://otos.stat.fi/items/0047a231-3972-41c7-b936-8aef71f6394b

### Note that there was the possibility of panachage in this election,
### so it's not simple

### The source file (finland_prewar.csv) is laid out with one row per
### year-party and one column per constituency. We subset to this election,
### reshape to long form, map the (abbreviated) constituency headers onto
### CLEA's cst_n, and map party names onto CLEA pty codes. CLEA records no
### magnitudes or seats for this election (all -990), so both are patched;
### the magnitude is derived as the sum of seats won in each constituency.

raw <- readr::read_csv(here::here("_data",
                                  "man",
                                  "finland_prewar.csv"),
                       show_col_types = FALSE)

### Map the abbreviated constituency column headers onto CLEA cst_n
cst_lookup <- c(
    "Uudenmaan l."         = "uudenmaan läänin",
    "Turun l. eteläinen"   = "tutun-porin läänin eteläinen",
    "Turun l. pohjoinen"   = "turun-porin läänin pohjoinen",
    "Hämeen l. eteläinen"  = "hämeen läänin eteläinen",
    "Hämeen l. pohjoinen"  = "hämeen läänin pohjoinen",
    "Viipurin l. läntinen" = "viipurin läänin läntinen",
    "Viipurin l. itäinen"  = "viipurin läänin itäinen",
    "Mikkelin l."          = "mikkelin läänin",
    "Kuopion l. läntinen"  = "kuopion läänin läntinen",
    "Kuopion l. itäinen"   = "kuopion läänin itäinen",
    "Vaasan l. itäinen"    = "vaasan läänin itäinen",
    "Vaasan l. eteläinen"  = "vaasan läänin eteläinen",
    "Vaasan l. pohjoinen"  = "vaasan läänin pohjoinen",
    "Oulun l. etel."       = "oulun läänin eteläinen",
    "Oulun l. pohjoinen"   = "oulun läänin pohjoinen",
    "Lapin l."             = "lapin läänin")

patch <- raw |>
    dplyr::filter(Year == 1919) |>
    tidyr::pivot_longer(cols = all_of(names(cst_lookup)),
                        names_to = "cstcol",
                        values_to = "seat") |>
    dplyr::mutate(seat = suppressWarnings(as.integer(seat)),
                  cst_n = unname(cst_lookup[cstcol])) |>
    dplyr::filter(!is.na(seat), !is.na(cst_n))

### Table contains information on seats won by
### RKP / Ruotsalainen kansanpuolue (11)
### Kok / Kansallinen Kokoomus (4)
### Edistyspuolue / Kansallinen Edistyspuolue (3)
### Mallaisliitto / Maalaisliitto (8)
### SDP / Suomen Sosialidemokraattinen Puolue (24)
### Kristillinen työväenliitto / Christian Workers' Union — CLEA has no
###   separate code, so its two seats are recorded under others (4000)

## Patch magnitudes first (derived as seats won per constituency)
patch_mags <- patch |>
    dplyr::group_by(cst_n) |>
    dplyr::summarize(mag = sum(seat), .groups = "drop") |>
    dplyr::mutate(id = 242)

if (anyDuplicated(patch_mags[, c("cst_n")])) {
    stop("Duplicate entries in patches for Finland 1919")
}

dta <- dta |>
    left_join(patch_mags,
              by = join_by(id, cst_n),
              suffix = c("", ".patched"),
              relationship = "many-to-one") |>
    mutate(mag = case_when((is.na(mag) | mag == -990) ~ mag.patched,
                           TRUE ~ mag)) |>
    select(-mag.patched)

rm(patch_mags)


## Now patch party totals
patch <- patch |>
    dplyr::mutate(pty = case_when(
                      Party == "RKP" ~ 11,
                      Party == "Kok" ~ 4,
                      Party == "Edistyspuolue" ~ 3,
                      Party == "Mallaisliitto" ~ 8,
                      Party == "SDP" ~ 24,
                      Party == "Kristillinen työväenliitto" ~ 4000,
                      ))

if (any(is.na(patch$pty))) {
    stop("Unmapped party in patches for Finland 1919")
}

patch <- patch |>
    dplyr::group_by(cst_n, pty) |>
    dplyr::summarize(seat = sum(seat), .groups = "drop") |>
    dplyr::mutate(id = 242)

dta <- dta |>
    left_join(patch,
              by = join_by(id, cst_n, pty),
              suffix = c("", ".patch"),
              relationship = "one-to-one") |>
    mutate(seat = case_when((is.na(seat) | seat == -990) ~ seat.patch,
                            TRUE ~ seat)) |>
    select(-seat.patch)

rm(patch)
