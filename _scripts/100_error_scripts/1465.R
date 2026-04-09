
# Malta (September, 1950)

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

# District 01: The Candidate Performance table gives a win order to Galea,
# R.V.; Mintoff, Dom; Boffa, Pawlu; Borg Olivier, Giorgio; and Mizzi, Enrico.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Conti, Amabile A.; Pace,
# Paolo; Quattromani, Emanuele; Attard Bezzina, Fanny; Bartoli, Albert V.;
# Tua, Robert A.; Miceli, Joseph Anthony; Raimondo, John; Bonaci, Cikku;
# Formosa, Vincent; Sacco, Henry; and De Giorgio, Giorgio.
# Miceli, Joseph Anthony is marked as a casual-election replacement and De
# Giorgio, Giorgio is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 02: The Candidate Performance table gives a win order to Barbara,
# Agatha; Laiviera, Nestu; Mintoff, Dom; Boffa, Anglu; and Agius Muscat,
# Giuseppe.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Paris, Antonio; Schembri,
# Giuseppe; Raimondo, John; Piscopo, Daniel; Farrugia, Riccardo; Attard
# Bezzina, Guze; Desira Buttigieg, Joseph; and Cassar Galea, Joseph F..
# Piscopo, Daniel is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 03: The Candidate Performance table gives a win order to Attard
# Bezzina, Emmanuel; Cacciottolo, Salvu; Boffa, Pawlu; Cassar, Giuse'; and
# Caruana, Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Dalli, Gio. Maria;
# Zammit, Calcidon; Portelli, Leo; Farrugia, Paolo; Zahra, Walter; Girard,
# Robert; Dalli, Nazareno; Agius Muscat, Gius.; Cassar Galea, Joseph F.; and
# Cole, Johnnie.

# District 04: The Candidate Performance table gives a win order to
# Strickland, Mabel; Abela, Joseph F.; Cole, Johnnie; Ganado, Godwin G.; and
# Borg Olivier, Giorgio.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Glenday, Albert R.;
# Ebeyer, Lewis; Mifsud, Alfred; Debono, Peter Paul; Barbara, Agatha; Saliba,
# Philip; Pullicino, Anthony A.; Bonello, Pawlu; Mallia, Paul; Attard
# Kingswell, Joseph; Gatt, John; Busuttil, Edwin; De Giorgio, Giorgio; and
# Zammit, Calcidon.

# District 05: The Candidate Performance table gives a win order to Galea,
# R.V.; Craig, Edwin; Colombo, Arthur F.; Frendo Azzopardi, J.; and Mizzi,
# Fortunato.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Bencini, Ganni; Diacono,
# Joseph; Micallef, Edgar; Bonaci, Cikku; Mizzi, Bertu; Bonavia, Emanuel;
# Scicluna, Edward; Scerri, Vincent; Agius, Carmelo; Farrugia, Gaetano;
# Rizzo, Oscar; Miceli, Joseph Anthony; Borg Dingli, Carmelina; Puglisevich,
# Giuseppe; Ellul Mercer, J.; and Frendo Randon, Rosario.
# Scerri, Vincent is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 06: The Candidate Performance table gives a win order to Flores,
# Joseph B.; Tabone, Leli [E.C.]; Schembri, Joseph; Camilleri, Giuseppe
# Maria; and Caruana Demajo, Tom..
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Cassar, Gerard; Salinos,
# Joseph; Muscat Manduca, Marie Louise; Agius, Carmelo; Bencini, Robert;
# Schembri Adami, Godfrey; Ellul, Roger; Rizzo, Oscar; Demajo, Bascal;
# Portanier, John; and Vassallo, Joseph George.

# District 07: The Candidate Performance table gives a win order to Fava,
# Amedeo; Grech, Pawlu; Schembri Adami, Anthony; Agius, Emmanuele; and
# Schembri, Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Borg, Guze; Sammut,
# Gius.; Schembri, Joseph; Spiteri, Joseph; Chetcuti, Karm; Attard Montalto,
# Joseph; Zammit, Joseph; Muscat, Joseph; Caruana, Joseph; Flores, Joseph;
# and Frendo Randon, Rosario.

# District 08: The Candidate Performance table gives a win order to De
# Trafford Strickland, Cecilia; Portelli, Paul; Cauchi, Giuseppi; Cauchi,
# Amabile; and Mizzi, Enrico.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Camilleri, Giuseppe
# Maria; Vassallo Mallia, Therese; Pace Axiak, John; Galea, George; Boffa,
# Geneveffa; Jones, Henry; Pace, Giuseppe; Zammit Haber, Lawrence; Vella,
# Salvatore; Saliba, Salvu; Borg Olivier De Puget, Joseph; Borg, Guzepp;
# Colombo, Arthur F.; Debono, Censinu; Cefai, Giuseppi; Galea, Emanuel; Cini,
# Guzepp; Calleja, Benoit; and Galea, Antonio.
# Galea, George is marked as a casual-election replacement and is therefore not counted as a district winner here.

dta$seat[
  dta$id == 1465 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::Galea, R.V.",
  "1::Mintoff, Dom",
  "1::Boffa, Pawlu",
  "1::Borg Olivier, Giorgio",
  "1::Mizzi, Enrico",
  "2::Barbara, Agatha",
  "2::Laiviera, Nestu",
  "2::Mintoff, Dom",
  "2::Boffa, Anglu",
  "2::Agius Muscat, Giuseppe",
  "3::Attard Bezzina, Emmanuel",
  "3::Cacciottolo, Salvu",
  "3::Boffa, Pawlu",
  "3::Cassar, Giuse'",
  "3::Caruana, Carmelo",
  "4::Strickland, Mabel",
  "4::Abela, Joseph F.",
  "4::Cole, Johnnie",
  "4::Ganado, Godwin G.",
  "4::Borg Olivier, Giorgio",
  "5::Galea, R.V.",
  "5::Craig, Edwin",
  "5::Colombo, Arthur F.",
  "5::Frendo Azzopardi, J.",
  "5::Mizzi, Fortunato",
  "6::Flores, Joseph B.",
  "6::Tabone, Leli [E.C.]",
  "6::Schembri, Joseph",
  "6::Camilleri, Giuseppe Maria",
  "6::Caruana Demajo, Tom.",
  "7::Fava, Amedeo",
  "7::Grech, Pawlu",
  "7::Schembri Adami, Anthony",
  "7::Agius, Emmanuele",
  "7::Schembri, Carmelo",
  "8::De Trafford Strickland, Cecilia",
  "8::Portelli, Paul",
  "8::Cauchi, Giuseppi",
  "8::Cauchi, Amabile",
  "8::Mizzi, Enrico"
)

dta$seat[
  dta$id == 1465 &
    dta$seat > 0 &
    !paste(dta$cst, dta$can, sep = "::") %in% winner_keys
] <- 0

