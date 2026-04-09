
# Malta (October, 1947)

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

# District 01: The Candidate Performance table gives a win order to Hyzler,
# Joseph; Boffa, Pawlu; Camilleri, Bertram; Ellul, Guze; and Mizzi, Enrico.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Borg Barthet, George;
# Quattromani, Emanuel; Miceli, Guze; Bernard, Alb. V.; Camilleri, Giuseppe;
# Caruana Curran, Maurice; Bencini, Robert; Pellegrini, Vincenzo Maria; Borg
# Olivier, Giorgio; and Sacco, Henry.
# Miceli, Guze is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 02: The Candidate Performance table gives a win order to Attard
# Bezzina, Guze; Barbara, Agatha; Laiviera, Nestu; Mintoff, Dominku; and
# Agius Muscat, Joseph.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Paris, Peppi; Tabone
# Adami, John; Farrugia, Riccardo; Gatt, John; and Raimondo, John.
# Raimondo, John is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 03: The Candidate Performance table gives a win order to Attard
# Bezzina, Emmanuel; Boffa, Pawlu; Cassar, Guze; Cole, Johnny; and Caruana,
# Carmelo.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Pullicino, Anthony;
# Dalli, Ganni; and Farrugia, Paolo.

# District 04: The Candidate Performance table gives a win order to Colombo,
# Turu; Debono, Pietru Paul; Ganado, Godwin G.; Glenday, Albert R.; and Borg
# Olivier, Giorgio.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Cassar, Guze; Pellegrini,
# Vincenzo Maria; Buttigieg, Filippo Nicolo; Pullicino, Anthony; and
# Busuttil, Antonio.

# District 05: The Candidate Performance table gives a win order to Pace,
# Giuseppe; Camilleri, Bertram; Camilleri, John; Colombo, Turu; and Frendo
# Azzopardi, John (Jack).
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Schembri, Salvatore;
# Mizzi, Fortunato; Frendo Randon, Rosario; Puglisevich, Giuseppi; Agius,
# Carmelo; Miceli, Guze; Girard, Robert; Buhagiar, Helene (Lily); Farrugia,
# Gaetano; Sammut, Oscar; and Rizzo, Oscar.
# Agius, Carmelo is marked as a casual-election replacement and is therefore not counted as a district winner here.

# District 06: The Candidate Performance table gives a win order to Hyzler,
# Albert V.; Bencini, Robert; Cassar, Gerard; Schembri, Joseph; and Maempel,
# F.W..
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Arrigo, Maurice; Ellul,
# Roger; Dalli, Ninu; Schembri Adami, Godfrey; Agius, Carmelo; Camilleri,
# Giuseppe M.; Caruana Demajo, Tom; Mifsud Ellul, Joe; Portanier, John; and
# Sacco, Henry.

# District 07: The Candidate Performance table gives a win order to Apap
# Bologna, Filippo; Fava, Amadeo; Schembri Adami, Anthony; Scicluna, Peter
# Paul; and Agius, Emmanuele.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Zammit, Giuseppe; Attard
# Montalto, Joseph; Pace, Giuseppe; Sammut, Gius.; Grech, Mariu; Attard,
# Ganni; Vella, Francis E.; Grech, Victor; and Tabone Adami, Frans.

# District 08: The Candidate Performance table gives a win order to Calleja,
# Anton; Cefai, Guzeppi; Masini, Francesco; Camilleri, Francesco; and Jones,
# Henry.
# The following candidates have positive seat values in CLEA but did not win
# a district seat at the election and are set to 0: Cauchi, Guzeppi; Cutajar,
# Louis; Vella, Guzepp; Vella, Karmnu; Portelli, Paul; Attard, Carmelo; and
# Cauchi, Mabbli.

dta$seat[
  dta$id == 1464 &
    dta$seat > 0
] <- 1

winner_keys <- c(
  "1::Hyzler, Joseph",
  "1::Boffa, Pawlu",
  "1::Camilleri, Bertram",
  "1::Ellul, Guze",
  "1::Mizzi, Enrico",
  "2::Attard Bezzina, Guze",
  "2::Barbara, Agatha",
  "2::Laiviera, Nestu",
  "2::Mintoff, Dominku",
  "2::Agius Muscat, Joseph",
  "3::Attard Bezzina, Emmanuel",
  "3::Boffa, Pawlu",
  "3::Cassar, Guze",
  "3::Cole, Johnny",
  "3::Caruana, Carmelo",
  "4::Colombo, Turu",
  "4::Debono, Pietru Paul",
  "4::Ganado, Godwin G.",
  "4::Glenday, Albert R.",
  "4::Borg Olivier, Giorgio",
  "5::Pace, Giuseppe",
  "5::Camilleri, Bertram",
  "5::Camilleri, John",
  "5::Colombo, Turu",
  "5::Frendo Azzopardi, John (Jack)",
  "6::Hyzler, Albert V.",
  "6::Bencini, Robert",
  "6::Cassar, Gerard",
  "6::Schembri, Joseph",
  "6::Maempel, F.W.",
  "7::Apap Bologna, Filippo",
  "7::Fava, Amadeo",
  "7::Schembri Adami, Anthony",
  "7::Scicluna, Peter Paul",
  "7::Agius, Emmanuele",
  "8::Calleja, Anton",
  "8::Cefai, Guzeppi",
  "8::Masini, Francesco",
  "8::Camilleri, Francesco",
  "8::Jones, Henry"
)

dta$seat[
  dta$id == 1464 &
    dta$seat > 0 &
    !paste(dta$cst, dta$can, sep = "::") %in% winner_keys
] <- 0

