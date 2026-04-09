# Malta (August, 1927)

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

# District 01: The Candidate Performance table gives a win order to Mifsud, Ugo
# P.; Mallia, Carlo; Galea, Robert; and Gera De Petri, Alfred.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Parnis, Alfred; Borg,
# Giorgio; Frendo Azzopardi, Giuseppe; Galea, Edoardo L.; and Harding,
# William.

# District 02: The Candidate Performance table gives a win order to Dandria,
# Enrico; Bartolo, Augusto; Montano, Anthony; and Azzopardi, Alfredo W..
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Parnis, Eric; Mizzi,
# Alberto; and Mifsud, Arturo.

# District 03: The Candidate Performance table gives a win order to Dalli,
# Antonio; Samut, Achille; Sacco, Enrico; and Bencini, Robert.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Xuereb, Gustavo; Muscat,
# Joseph; Mifsud Ellul, Giuseppe; Muscat Azzopardi, Gino; Borg, Michel; Ellul,
# Fortunato; and Zammit Hammet, Salvatore.

# District 04: The Candidate Performance table gives a win order to Mifsud
# Bonnici, Carmelo; Hamilton, Robert E.; Dundon, Michael; and Agius Muscat,
# Giuseppe.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Strickland, Gerald; Bencini,
# Giovanni; Orlando, Giuse; Bugelli, Carmelo; and Soler, Gustavo.

# District 05: The Candidate Performance table gives a win order to Adami,
# Giovanni; Parnis, Alfred; Boffa, Paolo; and Cachia Zammit, Alfredo.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Mifsud, Armand; Caruana,
# Michael; Sacco, Paul; Damato, Giuseppe; Caruana Colombo, Giuseppe; and
# Savona, William.

# District 06: The Candidate Performance table gives a win order to Salomone,
# Walter; Strickland, Roger; Bugeja, John; and Fenech, Tommaso.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Borg, Giuseppe; Borg,
# Michael; Borg Olivier, Gaetano; Tabone Adami, Francesco; and Zammit Hammet,
# Salvatore.

# District 07: The Candidate Performance table gives a win order to Vassallo,
# Edwin; Montanaro, Anthony Joseph; De Giorgio, Giuseppe; and Delia, Nicolo.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Zammit, Alfred; Azzopardi
# Castaldi, Luigi; Ferris, Francesco; and Sammut, Attilio.

# District 08: The Candidate Performance table gives a win order to Mizzi,
# Enrico; Micallef, Giuseppe (Ind); Strickland, Gerald; and Micallef,
# Giuseppe (CON).
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Debono, Emmanuele; Bonello,
# Robert; Xuereb, Giuseppe; Zammit Haber, Lorenzo; and Pace, Luigi.

dta$seat[
  dta$id == 1460 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::3::Mifsud, Ugo P.",
  "1::3::Mallia, Carlo",
  "1::11::Galea, Robert",
  "1::11::Gera De Petri, Alfred",
  "2::3::Dandria, Enrico",
  "2::11::Bartolo, Augusto",
  "2::11::Montano, Anthony",
  "2::3::Azzopardi, Alfredo W.",
  "3::3::Dalli, Antonio",
  "3::11::Samut, Achille",
  "3::2::Sacco, Enrico",
  "3::11::Bencini, Robert",
  "4::3::Mifsud Bonnici, Carmelo",
  "4::11::Hamilton, Robert E.",
  "4::2::Dundon, Michael",
  "4::3::Agius Muscat, Giuseppe",
  "5::3::Adami, Giovanni",
  "5::11::Parnis, Alfred",
  "5::2::Boffa, Paolo",
  "5::3::Cachia Zammit, Alfredo",
  "6::11::Salomone, Walter",
  "6::11::Strickland, Roger",
  "6::11::Bugeja, John",
  "6::3::Fenech, Tommaso",
  "7::11::Vassallo, Edwin",
  "7::11::Montanaro, Anthony Joseph",
  "7::3::De Giorgio, Giuseppe",
  "7::3::Delia, Nicolo",
  "8::3::Mizzi, Enrico",
  "8::6001::Micallef, Giuseppe",
  "8::11::Strickland, Gerald",
  "8::11::Micallef, Giuseppe"
)

dta$seat[
  dta$id == 1460 &
    dta$seat > 0 &
    !paste(dta$cst, dta$pty, dta$can, sep = "::") %in% winner_keys
] <- 0
