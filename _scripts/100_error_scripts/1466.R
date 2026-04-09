
# Malta (May, 1951)

# Data from:
#
# https://www.um.edu.mt/r/projects/maltaelections/elections/parliamentary
# https://www.um.edu.mt/__data/assets/excel_doc/0007/179890/cand-perf-1947-1955.xls

# For some reason, candidates are given seat counts greater than 1. These
# should be 1 instead. The raw data also give positive seat values to
# candidates who did not win a district seat. The Candidate Performance
# table shows who won a district seat at the general election itself, so
# casual-election replacements and post-election bonus seats are not
# counted here.

# District 01: The Candidate Performance table gives a win order to Attard
# Bezzina, Fanny; Mintoff, Dom; Boffa, Pawlu; Borg Olivier, Giorgio; and
# Borg, Robert.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Farrugia, Carmelo;
# Bencini, Robert; Farrugia, Riccardo; Conti, Amabile A.; Quattromani,
# Emmanuele; Pace, Paolo; Schembri, Joseph; De Giorgio, George; Salinos,
# Joseph; Miceli, Guze; and Agius, Carmelo.
# Salinos, Joseph is marked as a casual-election replacement and De Giorgio,
# George is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 02: The Candidate Performance table gives a win order to Barbara,
# Agatha; Laiviera, Nestu; Mintoff, [Dom]; Piscopo, Daniel; and Cassar Galea,
# Joseph F..
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Catania, Espedito; Paris,
# Antonio; Caruana, Carmelo; Farrugia, Ricardo; and Schembri, Giuseppe.

# District 03: The Candidate Performance table gives a win order to Attard
# Bezzina, Emmanuel; Cacciottolo, Salvu; Cassar, Guze; Cole, Johnnie; and
# Caruana, Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Farrugia, Paolo;
# Vassallo, Guze; Boffa, Paolo; Dalli, Nazareno; Scicluna, Edward, Major;
# Paris, Antonio; and Dalli, Gamri [sic].

# District 04: The Candidate Performance table gives a win order to
# Strickland, Mabel; Abela, Joseph; Ganado, Godwin G.; Borg Olivier, Giorgio;
# and Pullicino, Anthony.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Zammit, Calcedonio;
# Fenech, Albert J.; Xuereb, Joe Paul; Dalli, Gio Maria; Bencini, Robert;
# Cole, Johnny; Vella, Giuseppe; Busuttil, Edwin; Saliba, Philip; Attard
# Kingswell, Joe; and Montanaro, Anthony.

# District 05: The Candidate Performance table gives a win order to Galea,
# Robert; Bonaci, Cikku; Ellul Mercer, Joseph; Frendo Azzopardi, John; and
# Mizzi, Fortunato.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Bartolo, Anthony
# Lawrence; Borg Olivier, Gaetano; Farrugia, Remigio; Rizzo, Oscar; Decesare,
# Maurice; Farrugia, Gaetano; Agius, Carmelo; and Busuttil, Edwin.

# District 06: The Candidate Performance table gives a win order to Flores,
# Joseph; Tabone, E.C.; Hyzler, Albert Victor; Camilleri, Giuseppe Maria; and
# Caruana Demajo, Tommaso.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Agius, Oscar; Demajo,
# Baskal; Muscat Manduca, Marie Louise; Cassar, Guze; Schembri, Joseph;
# D'Andria, Alberto Sigismonde; and Salinos, Joseph.

# District 07: The Candidate Performance table gives a win order to Attard
# Montalto, Giuseppe; Flores, Joseph; Schembri Adami, Anthony; Sammut,
# Giuseppe; and Schembri, Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Zammit, Joseph; Bonaci,
# Cikku; Scicluna, Peter Paul; Fava, Amadeo; Agius, Calcidon; Bezzina
# Wettinger, Francis; Grech, Pawlu; Pulis, Mike; Scicluna, Tonin; Camilleri,
# Spiro; Borg Olivier, Gaetano; and Catania, Espedito.
# Pulis, Mike is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 08: The Candidate Performance table gives a win order to De
# Trafford Strickland, Cecilia; Cefai, Giuseppi; Cauchi, Amabile; Galea,
# George; and Refalo, Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Axisa, Joseph; Buttigieg,
# Anton; Pace Axiak, John; Portelli, Paul; Borg Olivier De Puget, Joseph; and
# Bondi, Joe.

dta$seat[
  dta$id == 1466 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::Attard Bezzina, Fanny",
  "1::Mintoff, Dom",
  "1::Boffa, Pawlu",
  "1::Borg Olivier, Giorgio",
  "1::Borg, Robert",
  "2::Barbara, Agatha",
  "2::Laiviera, Nestu",
  "2::Mintoff, [Dom]",
  "2::Piscopo, Daniel",
  "2::Cassar Galea, Joseph F.",
  "3::Attard Bezzina, Emmanuel",
  "3::Cacciottolo, Salvu",
  "3::Cassar, Guze",
  "3::Cole, Johnnie",
  "3::Caruana, Carmelo",
  "4::Strickland, Mabel",
  "4::Abela, Joseph",
  "4::Ganado, Godwin G.",
  "4::Borg Olivier, Giorgio",
  "4::Pullicino, Anthony",
  "5::Galea, Robert",
  "5::Bonaci, Cikku",
  "5::Ellul Mercer, Joseph",
  "5::Frendo Azzopardi, John",
  "5::Mizzi, Fortunato",
  "6::Flores, Joseph",
  "6::Tabone, E.C.",
  "6::Hyzler, Albert Victor",
  "6::Camilleri, Giuseppe Maria",
  "6::Caruana Demajo, Tommaso",
  "7::Attard Montalto, Giuseppe",
  "7::Flores, Joseph",
  "7::Schembri Adami, Anthony",
  "7::Sammut, Giuseppe",
  "7::Schembri, Carmelo",
  "8::De Trafford Strickland, Cecilia",
  "8::Cefai, Giuseppi",
  "8::Cauchi, Amabile",
  "8::Galea, George",
  "8::Refalo, Carmelo"
)

dta$seat[
  dta$id == 1466 &
    dta$seat > 0 &
    !paste(dta$cst, dta$can, sep = "::") %in% winner_keys
] <- 0

