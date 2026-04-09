# Malta (June, 1932)

# Data from:
#
# https://www.um.edu.mt/r/projects/maltaelections/elections/parliamentary
# https://www.um.edu.mt/__data/assets/excel_doc/0006/179889/cand-perf-1921-1945.xls

# For some reason, candidates are given party seat totals rather than
# individual seat values. These should be 1 instead. The raw data also give
# positive seat values to candidates who did not win a district seat. The
# Candidate Performance table shows who won a district seat at the general
# election itself.

# District 01: The Candidate Performance table gives a win order to Mifsud,
# Ugo; Mallia, Carlo; Hyzler, Giuseppi; and Galea, Robert V..
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Preziosi, L.; Borg, G.; and
# Gera De Petri, A..

# District 02: The Candidate Performance table gives a win order to Dandria,
# Enrico; Mizzi, Alberto; Montano, Anthony P.; and Galea, Robert V..
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Azzopardi, Alfredo W.;
# Chesney, Alexander George; and Mompalao De Piro, George.

# District 03: The Candidate Performance table gives a win order to Bencini,
# Robert; Maempel Naudi, Federico F.; Dalli, Antonio; and Borg, Michel.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Muscat, Joseph; Sacco,
# Enrico; Ellul, Fortunato; and Semini, Albert J..

# District 04: The Candidate Performance table gives a win order to Mifsud
# Bonnici, Carmelo; Agius Muscat, Giuseppe; Soler, Gustav; and Hamilton, Robert
# E..
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Briffa, Alfred; Pace,
# Joseph; and Samut, Fred.

# District 05: The Candidate Performance table gives a win order to Strickland,
# Gerald; Boffa, Paulu; Adami, Giovanni; and Schembri, Paolino.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Borg Olivier, Joseph;
# Testaferrata, Daniele; Valenzia, Ercole; Bencini, Gianni; Caruana Colombo,
# Giuseppe; and Cachia Zammit, Alfredo.

# District 06: The Candidate Performance table gives a win order to Bugeja,
# John; Fenech, Tommaso; Mizzi, Rosario; and Salomone, Walter.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Borg, Giuse; Borg, Michele;
# Strickland, Roger; Borg Olivier, Gaetano; Busuttil, Antonio; and Zammit
# Hammet, Salvatore.

# District 07: The Candidate Performance table gives a win order to Strickland,
# Gerald; De Giorgio, Giuseppe; Azzopardi Castaldi, Luigi; and Delia, Niccolo.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Agius, Edward; Vassallo,
# Edwin; Zammit, Alfred; and Mifsud Bonnici, Carmelo.

# District 08: The Candidate Performance table gives a win order to Mizzi,
# Enrico; Micallef, Giuseppe; Strickland, Roger; and Cremona, Giuseppe.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Bonello, Robert; Mifsud,
# Armando E.; and Ruggier, Ruggiero.

dta$seat[
  dta$id == 1461 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::3::Mifsud, Ugo",
  "1::3::Mallia, Carlo",
  "1::3::Hyzler, Giuseppi",
  "1::11::Galea, Robert V.",
  "2::3::Dandria, Enrico",
  "2::3::Mizzi, Alberto",
  "2::11::Montano, Anthony P.",
  "2::11::Galea, Robert V.",
  "3::11::Bencini, Robert",
  "3::3::Maempel Naudi, Federico F.",
  "3::3::Dalli, Antonio",
  "3::3::Borg, Michel",
  "4::3::Mifsud Bonnici, Carmelo",
  "4::3::Agius Muscat, Giuseppe",
  "4::3::Soler, Gustav",
  "4::11::Hamilton, Robert E.",
  "5::11::Strickland, Gerald",
  "5::2::Boffa, Paulu",
  "5::3::Adami, Giovanni",
  "5::3::Schembri, Paolino",
  "6::11::Bugeja, John",
  "6::3::Fenech, Tommaso",
  "6::3::Mizzi, Rosario",
  "6::11::Salomone, Walter",
  "7::11::Strickland, Gerald",
  "7::3::De Giorgio, Giuseppe",
  "7::3::Azzopardi Castaldi, Luigi",
  "7::3::Delia, Niccolo",
  "8::3::Mizzi, Enrico",
  "8::3::Micallef, Giuseppe",
  "8::11::Strickland, Roger",
  "8::3::Cremona, Giuseppe"
)

dta$seat[
  dta$id == 1461 &
    dta$seat > 0 &
    !paste(dta$cst, dta$pty, dta$can, sep = "::") %in% winner_keys
] <- 0
