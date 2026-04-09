
# Malta (December, 1953)

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

# District 01: The Candidate Performance table gives a win order to Mintoff,
# Duminku; Salinos, Joseph; Boffa, Pawlu; Borg Olivier, Giorgio; and Pace,
# Paolo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: De Giorgio, Giorgio;
# Camilleri, Benedict; Borg, Robert; Agius, Carmelo; Bonaci, Cikku;
# Camilleri, Bertram; Forace, Joseph Leonard; Bondin, Publio; Gatt, Giuseppe
# G.; Quattromani, Emmanuele; Farrugia, Carmelo; D'Andria, Alberto
# Sigismondo; Buttigieg, Anton; and Portelli, Giuseppe.

# District 02: The Candidate Performance table gives a win order to Barbara,
# Agatha; Laiviera, Nestu; Mintoff, Duminku; Caruana, Carmelo; and Paris,
# Antonio.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Piscopo, Daniel; Dalli,
# Nazareno; Muscat, Victor A.; Cassar Galea, Joseph F.; Fsadni, Harry;
# Catania, Espedito; and Farrugia, Remig.
# Piscopo, Daniel is marked as a casual-election replacement and Cassar
# Galea, Joseph F. is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 03: The Candidate Performance table gives a win order to Attard
# Bezzina, Emanuel; Borg, George; Cassar, Guze; Boffa, Pawlu; and Caruana,
# Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Fsadni, Harry; Forace,
# Joseph Leonard; Attard Montalto, Giuseppe; Hyzler, Albert V.; Dalli, Gio.
# Maria; Farrugia, Paolo; Dalli, Nazareno; Decelis, Michael; Debono, Tommy;
# and Cole, John.
# Cole, John is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 04: The Candidate Performance table gives a win order to Abela,
# Joseph; Zammit, Kalcidon; Farrugia, Joseph; Pullicino, Anthony A.; and
# Saliba, Philip.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Cassar, Guze; Fenech,
# Albert J.; Muscat, John; Aquilina, Emanuel (Lino); Ganado, Mary Anne; and
# Muscat, Dominic.

# District 05: The Candidate Performance table gives a win order to Bonaci,
# Cikku; Ellul Mercer, Joseph; Borg Olivier, Gaetano; Felice, Giovanni; and
# Frendo Azzopardi, John (Jackie).
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Decesare, Maurice;
# Camilleri, Bertram; Farrugia, Remig; Farrugia, Riccardo; and Rizzo, Oscar.

# District 06: The Candidate Performance table gives a win order to Flores,
# Joseph; Hyzler, Albert V.; Tabone, Emanuel C. (Leli); Camilleri, Giuseppe
# M.; and Caruana Demajo, Tom.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Cassar, Gerard; D'Andria,
# Alberto Sigismondo; Portelli, Giuseppe; Agius, Oscar; Schembri, Joseph;
# Muscat Manduca, Maria Louisa; and Bencini, Robert.

# District 07: The Candidate Performance table gives a win order to Flores,
# Joseph; Pulis, Mike; Bezzina Wettinger, Francis; Agius, Emanuele; and Borg
# Olivier, Giorgio.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Schembri, Carmelo;
# Scicluna, Peter Paul; Muscat, Giuseppi; Chetcuti, Carmel; Agius, Calcidon;
# Vella, Ganni; Borg Cardona, Stephen R.; Attard Montalto, Giuseppe;
# Schembri, Joseph; Laferla, Alfred; Vassallo, Pio; Bonaci, Gigi; Carbonaro,
# Antonio; and Grech, Paul.
# Agius, Calcidon is marked as a casual-election replacement and Attard
# Montalto, Giuseppe is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 08: The Candidate Performance table gives a win order to
# Camilleri, Anglu; Debrincat, Lorenzo; Cauchi, Amabile; Galea, George; and
# Refalo, Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Camilleri, Anthony;
# Micallef, John; Mizzi, Marcell; Saliba, Cikku; Azzopardi, Amante; Aquilina,
# Emmanuela; Cefai, Guzeppi; and Mallia, Vernon Anthony.

dta$seat[
  dta$id == 1467 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::Mintoff, Duminku",
  "1::Salinos, Joseph",
  "1::Boffa, Pawlu",
  "1::Borg Olivier, Giorgio",
  "1::Pace, Paolo",
  "2::Barbara, Agatha",
  "2::Laiviera, Nestu",
  "2::Mintoff, Duminku",
  "2::Caruana, Carmelo",
  "2::Paris, Antonio",
  "3::Attard Bezzina, Emanuel",
  "3::Borg, George",
  "3::Cassar, Guze",
  "3::Boffa, Pawlu",
  "3::Caruana, Carmelo",
  "4::Abela, Joseph",
  "4::Zammit, Kalcidon",
  "4::Farrugia, Joseph",
  "4::Pullicino, Anthony A.",
  "4::Saliba, Philip",
  "5::Bonaci, Cikku",
  "5::Ellul Mercer, Joseph",
  "5::Borg Olivier, Gaetano",
  "5::Felice, Giovanni",
  "5::Frendo Azzopardi, John (Jackie)",
  "6::Flores, Joseph",
  "6::Hyzler, Albert V.",
  "6::Tabone, Emanuel C. (Leli)",
  "6::Camilleri, Giuseppe M.",
  "6::Caruana Demajo, Tom",
  "7::Flores, Joseph",
  "7::Pulis, Mike",
  "7::Bezzina Wettinger, Francis",
  "7::Agius, Emanuele",
  "7::Borg Olivier, Giorgio",
  "8::Camilleri, Anglu",
  "8::Debrincat, Lorenzo",
  "8::Cauchi, Amabile",
  "8::Galea, George",
  "8::Refalo, Carmelo"
)

dta$seat[
  dta$id == 1467 &
    dta$seat > 0 &
    !paste(dta$cst, dta$can, sep = "::") %in% winner_keys
] <- 0

