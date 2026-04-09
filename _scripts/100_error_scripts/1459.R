# Malta (June, 1924)

# Data from:
#
# https://www.um.edu.mt/r/projects/maltaelections/elections/parliamentary
# https://www.um.edu.mt/__data/assets/excel_doc/0006/179889/cand-perf-1921-1945.xls

# For some reason, candidates are given party seat totals rather than
# individual seat values. These should be 1 instead. The raw data also give
# positive seat values to candidates who did not win a district seat. The
# Candidate Performance table shows who won a district seat at the general
# election itself.

# District 08 contains two distinct winning candidates named Micallef,
# Giuseppe, so the winner keys below are keyed by district, party, and
# candidate.

# District 01: The Candidate Performance table gives a win order to Strickland,
# Sir Gerald; Mifsud, Ugo P.; Buhagiar, Francesco; and Mallia, Carlo.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Adami, Giovanni; Galea,
# Edoardo L.; Galea, Robert V.; Gera De Petri, Alfred; Borg, George; and Borg
# Olivier, Oliviero.

# District 02: The Candidate Performance table gives a win order to Bartolo,
# Augusto; Dandria, Enrico; Farrugia, Vincenzo; and Magri, Alberto.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Mompalao De Piro, George;
# Montano, Antonio P.; Parnis, Eric; Formosa, Benjamino; Vassallo, Giuseppe;
# Bartolo, Amadeo; Mattei, Alfredo; Mizzi, Albert; and Mifsud, Armando E.

# District 03: The Candidate Performance table gives a win order to Henry,
# Charles Sydney; Dalli, Antonio; Zammit Hammet, Salvatore; and Ellul,
# Fortunato.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Agius, Arcangelo; Bencini,
# Robert; Muscat, Joseph; Borg, Michael; Zammit, Alfredo; Camilleri, Giuseppe;
# and Mifsud Ellul, Giuseppe.

# District 04: The Candidate Performance table gives a win order to Mifsud
# Bonnici, Carmelo; Hamilton, Robert E.; Bugelli, Carmelo; and Bencini,
# Giovanni.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Gatt, Joseph E.H.; Pace,
# Joseph; Lia, Giuseppe; Abela, Alberto; and Dundon, Michael.

# District 05: The Candidate Performance table gives a win order to Mizzi,
# Lewis F.; Adami, Giovanni; Savona, William; and Boffa, Paolo.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Micallef, Joseph; Price,
# Edward; Vella, Robert; Mattei, Alfredo; Borg Grech, Paolo; and Mifsud,
# Arturo.

# District 06: The Candidate Performance table gives a win order to Buhagiar,
# Francesco; Salomone, Walter; Mizzi, Lewis F.; and Zammit Hammet, Salvatore.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Bugeja, John; Debono,
# Salvino; Ullo Xuereb, Gustavo; Vella, Giuseppe; Grech, Paolo; and Sapiano,
# Giuseppe.

# District 07: The Candidate Performance table gives a win order to Vassallo,
# Edwin; De Giorgio, Giuseppe; Azzopardi Castaldi, Luigi; and Borg Olivier,
# Salvatore.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Hamilton, Robert E.;
# Montanaro Gauci, Anthony Joseph; and Sammut, Achille.

# District 08: The Candidate Performance table gives a win order to Mizzi,
# Enrico; Strickland, Gerald; Micallef, Giuseppe (CON); and Micallef,
# Giuseppe (DNP).
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Testaferrata Olivier, Henry;
# Azzopardi, Giuseppe; and Hili, Giuseppe.

dta$seat[
  dta$id == 1459 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::11::Strickland, Sir Gerald",
  "1::18::Mifsud, Ugo P.",
  "1::18::Buhagiar, Francesco",
  "1::17::Mallia, Carlo",
  "2::11::Bartolo, Augusto",
  "2::18::Dandria, Enrico",
  "2::2::Farrugia, Vincenzo",
  "2::17::Magri, Alberto",
  "3::11::Henry, Charles Sydney",
  "3::18::Dalli, Antonio",
  "3::2::Zammit Hammet, Salvatore",
  "3::18::Ellul, Fortunato",
  "4::17::Mifsud Bonnici, Carmelo",
  "4::11::Hamilton, Robert E.",
  "4::2::Bugelli, Carmelo",
  "4::2::Bencini, Giovanni",
  "5::11::Mizzi, Lewis F.",
  "5::18::Adami, Giovanni",
  "5::2::Savona, William",
  "5::2::Boffa, Paolo",
  "6::18::Buhagiar, Francesco",
  "6::11::Salomone, Walter",
  "6::11::Mizzi, Lewis F.",
  "6::2::Zammit Hammet, Salvatore",
  "7::11::Vassallo, Edwin",
  "7::18::De Giorgio, Giuseppe",
  "7::18::Azzopardi Castaldi, Luigi",
  "7::18::Borg Olivier, Salvatore",
  "8::17::Mizzi, Enrico",
  "8::11::Strickland, Gerald",
  "8::11::Micallef, Giuseppe",
  "8::17::Micallef, Giuseppe"
)

dta$seat[
  dta$id == 1459 &
    dta$seat > 0 &
    !paste(dta$cst, dta$pty, dta$can, sep = "::") %in% winner_keys
] <- 0
