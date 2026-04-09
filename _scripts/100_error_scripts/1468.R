
# Malta (February, 1955)

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

# District 01: The Candidate Performance table gives a win order to Bonaci,
# Cikku; Mintoff, Duminku; Sacco, Henry; Borg Olivier, Giorgio; and
# Camilleri, Benedict.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Ragonesi, Giuseppe;
# Salinos, Joseph; Buttigieg, Anton; Portelli, Joseph; Pace, Paolo; Agius,
# Carmelo; Galea, Victor; Mizzi, Edgar; Schembri, Joseph; Caruana, Emanuel;
# Penza, Carmelo; and Schembri Adami, Guze.
# Salinos, Joseph is marked as a casual-election replacement and Pace, Paolo
# is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 02: The Candidate Performance table gives a win order to Barbara,
# Agatha; Laiviera, Nestu; Mintoff, Duminku; Piscopo, Daniel; and Paris,
# Antonio.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Dalli, Nazareno;
# Raimondo, John; Catania, Espedito; Fsadni, Henry; Muscat, Victor; Boffa,
# Anglu; Cassar Galea, Joseph F.; Caruana, Carmelo; Ellul Galea, Karmenu;
# Grech, Carmela; and Andrews, David.

# District 03: The Candidate Performance table gives a win order to Borg,
# George; Cassar, Joseph; Cole, John J.; Cachia Zammit, Alexander; and
# Caruana, Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Debono, Thomas; Farrugia,
# Paolo; Mamo, Walter; Attard Bezzina, Emanuel; Dalli, Gio. Maria; Dalli,
# Nazareno; Cassar Galea, Joseph F.; Fsadni, Henry; and Paris, Antonio.
# Attard Bezzina, Emanuel is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 04: The Candidate Performance table gives a win order to Abela,
# Joseph; Cole, John J.; Zammit, Calcedonio; Farrugia, Joseph; and Muscat,
# John.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Saliba, Philip; Ganado,
# Mary Anne; Fenech, Albert J.; Aquilina, Emanuel J.; De Trafford Strickland,
# Cecilia,Hon.; and Pullicino, Anthony.

# District 05: The Candidate Performance table gives a win order to Decesare,
# Maurice; Ellul Mercer, Joseph; Felice, Giovanni; Frendo Azzopardi, John;
# and Rizzo, Oscar.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Bonaci, Cikku; Portelli,
# Gino; Meli, Edwin; Camilleri, John P.; Galea, Victor; Borg Olivier,
# Gaetano; Cassar, Gerard; and Mizzi, Edgar.

# District 06: The Candidate Performance table gives a win order to Flores,
# Joseph; Hyzler, Albert V.; Tabone, Emmanuel C. (Leli); Camilleri, Giuseppe;
# and Caruana Demajo, Tom.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Schembri, Joseph; Muscat
# Manduca, Maria Louisa; Portelli, Joseph; Agius, Oscar; Schembri Adami,
# Godfrey; Demajo, Baskal; Portanier, John; and Buttigieg, Anton.

# District 07: The Candidate Performance table gives a win order to Flores,
# Joseph; Pulis, Mike; Agius, Emmanuele; Borg Olivier, Giorgio; and Spiteri,
# Joseph.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Bonaci, Gigi; Agius,
# Calcidon; Bezzina Wettinger, Francis; Attard Montalto, Giuseppe; Vella,
# Ganni; Zammit, Joseph; Gauci, Paolo; Grech, Pawlu; Attard, Wenzu; Vassallo,
# Pio; Muscat, Joseph; Carbonaro, Antonio; Laferla, Alfred; and Galea,
# Ferdinandu.
# Agius, Calcidon is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 08: The Candidate Performance table gives a win order to
# Camilleri, Anglu; Debrincat, Wenzu; Mizzi, Marcell; Cauchi, Amabile; and
# Refalo, Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Micallef, John; Vella,
# Toni; Debrincat, Salvu; Cefai, Guzeppi; Zammit Haber, John Elia; Saliba,
# John; Scicluna, Karmenu; Aquilina, Emmanuela; Buttigieg, Salvu; Jones,
# Henry; Dimech, Guzeppi; Galea, Lawrence; Portelli, Paul; Azzopardi, Amante;
# Mercieca, Anthony; Attard, Felic; Zammit, Salvu; and Buttigieg, Kelinu.

dta$seat[
  dta$id == 1468 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::Bonaci, Cikku",
  "1::Mintoff, Duminku",
  "1::Sacco, Henry",
  "1::Borg Olivier, Giorgio",
  "1::Camilleri, Benedict",
  "2::Barbara, Agatha",
  "2::Laiviera, Nestu",
  "2::Mintoff, Duminku",
  "2::Piscopo, Daniel",
  "2::Paris, Antonio",
  "3::Borg, George",
  "3::Cassar, Joseph",
  "3::Cole, John J.",
  "3::Cachia Zammit, Alexander",
  "3::Caruana, Carmelo",
  "4::Abela, Joseph",
  "4::Cole, John J.",
  "4::Zammit, Calcedonio",
  "4::Farrugia, Joseph",
  "4::Muscat, John",
  "5::Decesare, Maurice",
  "5::Ellul Mercer, Joseph",
  "5::Felice, Giovanni",
  "5::Frendo Azzopardi, John",
  "5::Rizzo, Oscar",
  "6::Flores, Joseph",
  "6::Hyzler, Albert V.",
  "6::Tabone, Emmanuel C. (Leli)",
  "6::Camilleri, Giuseppe",
  "6::Caruana Demajo, Tom",
  "7::Flores, Joseph",
  "7::Pulis, Mike",
  "7::Agius, Emmanuele",
  "7::Borg Olivier, Giorgio",
  "7::Spiteri, Joseph",
  "8::Camilleri, Anglu",
  "8::Debrincat, Wenzu",
  "8::Mizzi, Marcell",
  "8::Cauchi, Amabile",
  "8::Refalo, Carmelo"
)

dta$seat[
  dta$id == 1468 &
    dta$seat > 0 &
    !paste(dta$cst, dta$can, sep = "::") %in% winner_keys
] <- 0

