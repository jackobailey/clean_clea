
# Malta (March, 1966)

# Data from:
#
# https://www.um.edu.mt/r/projects/maltaelections/elections/parliamentary
# https://www.um.edu.mt/__data/assets/excel_doc/0008/179891/cand-perf-1962-1971.xls

# For some reason, candidates are given seat counts greater than 1. These
# should be 1 instead. The raw data also give positive seat values to
# candidates who did not win a district seat. The Candidate Performance
# table shows who won a district seat at the general election itself, so
# casual-election replacements and post-election bonus seats are not
# counted here.

# District 01: The Candidate Performance table gives a win order to Holland,
# Patrick; Mintoff, Dom; Bonnici, Emanuel; Borg Olivier, Giorgio; and Pace,
# Paolo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Chetcuti, Cikku;
# Buttigieg, Gaetano; Herrera, Joseph; Cutajar, Emmanuel; Micallef Stafrace,
# Joseph; Darmanin, Joseph R.; Agius, Antonio; Aquilina, Carmelo; Buontempo,
# John; Cesareo, Edgar; Mifsud, Alfred; and De Marco, Guido.
# Micallef Stafrace, Joseph is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 02: The Candidate Performance table gives a win order to Barbara,
# Agatha; Mintoff, Dom; Piscopo, Daniel; Mifsud Bonnici, Ugo; and Muscat,
# Josie.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Catania, Espedito; Pule',
# Vincent; Cassar Galea, Joseph F.; Laiviera, Nestu; Mizzi, Eric C.; and
# Paris, Michael J..
# Laiviera, Nestu is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 03: The Candidate Performance table gives a win order to Carachi,
# Paul; Moran, Vincent; Sant, Lorry; Caruana, Carmelo; and Cassar Galea,
# Joseph F..
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Bugeja, Salvu; Sapiano,
# Joseph; Cachia Zammit, Alexander; Laiviera, Nestu; Borg Olivier De Puget,
# Albert; and Caruana, George.
# Caruana, George is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 04: The Candidate Performance table gives a win order to Abdilla,
# Rokku; Abela, Wistin; Attard Bezzina, Manoel; Cachia Zammit, Alexander; and
# Caruana, Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Saliba, Albino; Bonnici,
# Alfred; Sammut, Theodore; Zammit, Toni; Hyzler, George; Izzi Savona, Alex.;
# Dalli, Nazareno; and Petroni, Giuseppe.

# District 05: The Candidate Performance table gives a win order to Abela,
# Joseph; Muscat, Philip; Borg Olivier De Puget, Albert; Hyzler, George; and
# Saliba, Philip.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Hyzler, Albert V.; De
# Giorgio, Giorgio; Muscat, Frank; Borg, Anthony; Spiteri, Lino Paul;
# Farrugia, Joseph; D'Amato, Consiglio; and Camilleri, Gius. Maria.

# District 06: The Candidate Performance table gives a win order to Agius,
# Calcidon; Bonaci, Evelyn; Borg Olivier, Paolo; Dingli, Frans; and Spiteri,
# Guzi.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Debono, Joe; Agius,
# Emanuele; Grima, Paul; Pulis, Mike; Azzopardi, George; Fenech Adami, Eddie;
# Fenech, Joseph; Tabone, Emmanuel C.; Sammut, Giuseppi; Zerafa, Joe;
# Wettinger, Francis; and Grech Pillow, Henry.

# District 07: The Candidate Performance table gives a win order to
# Baldacchino, Joseph M.; Holland, Patrick; Borg Olivier, Gaetano; Felice,
# Giovanni; and Tabone, Vincent.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Sammut, Joseph; Vassallo,
# John; Agius, Carmelo; Privitera, Salvinu; Sammut, Giuseppi; Arrigo, Ralph
# Edgar; Carbonaro, Emanuel; Sghendo, John; Refalo, Michael A.; Craig, Edwin;
# and Eminyan, Victor.

# District 08: The Candidate Performance table gives a win order to
# Buttigieg, Anton; Hyzler, Albert V.; Camilleri, Gius. Maria; Caruana
# Demajo, Tommaso; and De Marco, Guido.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Fenech, Joseph; Delicata,
# Joseph; D'Amato, Consiglio; Sciberras, Joseph P.; Portelli, Gino;
# Portanier, Frans; Cachia, Joseph; Agius, Oscar; and Zammit, Karmnu.

# District 09: The Candidate Performance table gives a win order to Micallef,
# Freddie; Xuereb, Paul; Abela, Sammy; Borg Olivier, Giorgio; and Muscat,
# John.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Zammit, Guze; Mifsud,
# Alfred; Galea, Ferdinand; Spiteri, Guzi; Fenech, Mose'; and Muscat, Nicola.
# Galea, Ferdinand is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 10: The Candidate Performance table gives a win order to Galea,
# Kelinu; Attard, Coronato; Cauchi, Amabile; Refalo, Carmelo; and Tabone,
# Anton.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Sciberras, Vincent;
# Buttigieg, Anton; Cassar, Publio; Attard, Joe; Portelli, Lewis; Mizzi,
# Marcel; Haber, John; Debrincat, Wenzu; Xerri, Kelinu; Tabone, Francis;
# Debono, Joe; Vella, Marjanu; Xuereb, Anton; Attard, Felice; Saliba, Paul;
# Busuttil, John; Zammit, Salvu; Mizzi, Ganni; and Camilleri, Angelo
# (Il-Bedek).

dta$seat[
  dta$id == 1470 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::Holland, Patrick",
  "1::Mintoff, Dom",
  "1::Bonnici, Emanuel",
  "1::Borg Olivier, Giorgio",
  "1::Pace, Paolo",
  "2::Barbara, Agatha",
  "2::Mintoff, Dom",
  "2::Piscopo, Daniel",
  "2::Mifsud Bonnici, Ugo",
  "2::Muscat, Josie",
  "3::Carachi, Paul",
  "3::Moran, Vincent",
  "3::Sant, Lorry",
  "3::Caruana, Carmelo",
  "3::Cassar Galea, Joseph F.",
  "4::Abdilla, Rokku",
  "4::Abela, Wistin",
  "4::Attard Bezzina, Manoel",
  "4::Cachia Zammit, Alexander",
  "4::Caruana, Carmelo",
  "5::Abela, Joseph",
  "5::Muscat, Philip",
  "5::Borg Olivier De Puget, Albert",
  "5::Hyzler, George",
  "5::Saliba, Philip",
  "6::Agius, Calcidon",
  "6::Bonaci, Evelyn",
  "6::Borg Olivier, Paolo",
  "6::Dingli, Frans",
  "6::Spiteri, Guzi",
  "7::Baldacchino, Joseph M.",
  "7::Holland, Patrick",
  "7::Borg Olivier, Gaetano",
  "7::Felice, Giovanni",
  "7::Tabone, Vincent",
  "8::Buttigieg, Anton",
  "8::Hyzler, Albert V.",
  "8::Camilleri, Gius. Maria",
  "8::Caruana Demajo, Tommaso",
  "8::De Marco, Guido",
  "9::Micallef, Freddie",
  "9::Xuereb, Paul",
  "9::Abela, Sammy",
  "9::Borg Olivier, Giorgio",
  "9::Muscat, John",
  "10::Galea, Kelinu",
  "10::Attard, Coronato",
  "10::Cauchi, Amabile",
  "10::Refalo, Carmelo",
  "10::Tabone, Anton"
)

dta$seat[
  dta$id == 1470 &
    dta$seat > 0 &
    !paste(dta$cst, dta$can, sep = "::") %in% winner_keys
] <- 0

