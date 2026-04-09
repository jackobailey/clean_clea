# Malta (October, 1921)

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
# Ugo Pasqale; Strickland, Gerald; Adami, Giovanni; and Arrigo, Edgardo.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Hyzler, Giuseppe; and Gera De
# Petri, Alfred.

# District 02: The Candidate Performance table gives a win order to Dandria,
# Enrico; Bartolo, Augusto; Said, Emmanuele; and Farrugia, Vincenzo.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Ciantar, Henry C.; Pace,
# George; Samut, Achille; Preziosi, Luigi; Vassallo, Alfredo; Galea, Lewis; and
# Mifsud, E. Armando.

# District 03: The Candidate Performance table gives a win order to Dalli,
# Antonio; Borg, Michel; Henry, Charles Sydney; and Buttigieg, Filippo Nicolo.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Agius, Arcangelo; Frendo,
# Enrico; Conti, Temistocle; and Sammut, Carmelo.

# District 04: The Candidate Performance table gives a win order to Dundon,
# Michael; Bugelli, Carmelo; Frendo, Pier Giuseppe; and Hamilton, Robert.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Bencini, Giovanni; Valenzia,
# Ercole; Paris, Antonio; Ellul, Lorenzo; and Pace, Joseph.

# District 05: The Candidate Performance table gives a win order to Mattei,
# Alfredo; Portelli, Leone; Borg Grech, Paolo; and Busuttil, Vincenzo.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Mifsud, Arturo; Lanzon,
# Gaetano; Bonello, Francesco; and Lubrano, Goffredo.

# District 06: The Candidate Performance table gives a win order to Strickland,
# Gerald; Salamone, Walter; Buhagiar, Francesco; and Borg, Luigi.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Borg, Giuseppe M.; Grech,
# Paolo; and Vassallo, Alberto.

# District 07: The Candidate Performance table gives a win order to Borg
# Olivier, Salvatore; Ferris, Francesco; De Giorgio, Giuseppe; and Vassallo,
# Edwin.
# The following candidates have positive seat values in CLEA but did not win a
# district seat at the election and are set to 0: Calleja Schembri, Henry;
# Testaferrata Bonici, Daniele; and Wirth, Francesco.

# District 08: The Candidate Performance table gives a win order to Mizzi,
# Enrico; Camilleri, Luigi; Hili, Alfonso Maria; and Micallef, Giuseppe.

dta$seat[
  dta$id == 1458 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::11::Strickland, Gerald",
  "1::18::Adami, Giovanni",
  "1::18::Arrigo, Edgardo",
  "1::18::Mifsud, Ugo Pasqale",
  "2::11::Bartolo, Augusto",
  "2::18::Dandria, Enrico",
  "2::18::Said, Emmanuele",
  "2::2::Farrugia, Vincenzo",
  "3::11::Henry, Charles Sydney",
  "3::18::Borg, Michel",
  "3::18::Buttigieg, Filippo Nicolo",
  "3::18::Dalli, Antonio",
  "4::11::Hamilton, Robert",
  "4::18::Bugelli, Carmelo",
  "4::2::Dundon, Michael",
  "4::2::Frendo, Pier Giuseppe",
  "5::18::Mattei, Alfredo",
  "5::2::Portelli, Leone",
  "5::2::Borg Grech, Paolo",
  "5::2::Busuttil, Vincenzo",
  "6::11::Strickland, Gerald",
  "6::11::Salamone, Walter",
  "6::18::Buhagiar, Francesco",
  "6::18::Borg, Luigi",
  "7::11::Vassallo, Edwin",
  "7::18::Borg Olivier, Salvatore",
  "7::18::De Giorgio, Giuseppe",
  "7::18::Ferris, Francesco",
  "8::17::Mizzi, Enrico",
  "8::17::Camilleri, Luigi",
  "8::17::Hili, Alfonso Maria",
  "8::17::Micallef, Giuseppe"
)

dta$seat[
  dta$id == 1458 &
    dta$seat > 0 &
    !paste(dta$cst, dta$pty, dta$can, sep = "::") %in% winner_keys
] <- 0
