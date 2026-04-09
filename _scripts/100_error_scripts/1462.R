# Malta (July, 1939)

# Data from:
#
# https://www.um.edu.mt/r/projects/maltaelections/elections/parliamentary
# https://www.um.edu.mt/__data/assets/excel_doc/0006/179889/cand-perf-1921-1945.xls

# For some reason, candidates are given party seat totals rather than
# individual seat values. These should be 1 instead. The raw data also give
# positive seat values to candidates who did not win a district seat. The
# Candidate Performance table shows who won a district seat at the general
# election itself.

# District 01: The Candidate Performance table gives a win order to Strickland,
# Gerald; Mifsud, Ugo; Borg, George; Boffa, Paul; and Borg Olivier, Giorgio.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Gera De Petri, Alfred;
# Formosa, John; Valenzia, Ercole J.; Calleja, Giovanni; Maempel, Frederick W.;
# and Schembri, Giuseppe.

# District 02: The Candidate Performance table gives a win order to Strickland,
# Roger; Sacco, Henry; Bartoli, Albert V.; Montano, Anthony P.; and Mizzi,
# Enrico.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Mifsud Ellul, Annetto;
# Dalli, Ninu; Fenech, Tommaso; Jones, Henry; and Preziosi, Contino Luigi.

dta$seat[
  dta$id == 1462 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::11::Strickland, Gerald",
  "1::3::Mifsud, Ugo",
  "1::11::Borg, George",
  "1::2::Boffa, Paul",
  "1::3::Borg Olivier, Giorgio",
  "2::11::Strickland, Roger",
  "2::11::Sacco, Henry",
  "2::11::Bartoli, Albert V.",
  "2::11::Montano, Anthony P.",
  "2::3::Mizzi, Enrico"
)

dta$seat[
  dta$id == 1462 &
    dta$seat > 0 &
    !paste(dta$cst, dta$pty, dta$can, sep = "::") %in% winner_keys
] <- 0
