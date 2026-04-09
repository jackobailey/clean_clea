
# Marshall Islands (November, 2003)

# Data from:
#
# https://en.wikipedia.org/wiki/2003_Marshallese_general_election

# In AILINGLAPLAP, CHRISTOPHER J LOEAK was elected by lot after a tie
# https://en.wikipedia.org/wiki/2003_Marshallese_general_election

dta$seat[
  dta$id == 1252 &
    dta$can == "CHRISTOPHER J LOEAK"
] <- 1


# TOMAKI UJDA was elected unopposed in BIKINI/KILI/EJIT, not JOHN SILK

dta$can[
  dta$id == 1252 &
    dta$cst == 5
] <- "TOMAKI UJDA"


# The names are wrong in EBON

dta$can[
  dta$id == 1252 &
    dta$cst == 6 &
    dta$cv1 == 675
] <- "JOHN SILK"

dta$can[
  dta$id == 1252 &
    dta$cst == 6 &
    dta$cv1 == 209
] <- "THOMAS KIJINER"


# The names are wrong in ENEWETAK

dta$can[
  dta$id == 1252 &
    dta$cst == 7 &
    dta$cv1 == 351
] <- "ISHMAEL JOHN"

dta$can[
  dta$id == 1252 &
    dta$cst == 7 &
    dta$cv1 == 166
] <- "SAMSON YOSHITARO"


# KESSAI NOTE was elected unopposed in JABAT

dta$can[
  dta$id == 1252 &
    dta$cst == 8
] <- "KESSAI NOTE"


# The names are wrong in JALUIT

dta$can[
  dta$id == 1252 &
    dta$cst == 9 &
    dta$cv1 == 986
] <- "ALVIN JACKLICK"

dta$can[
  dta$id == 1252 &
    dta$cst == 9 &
    dta$cv1 == 956
] <- "RIEN MORRIS"

dta$can[
  dta$id == 1252 &
    dta$cst == 9 &
    dta$cv1 == 263
] <- "ALDEN JACKLICK"

dta$can[
  dta$id == 1252 &
    dta$cst == 9 &
    dta$cv1 == 197
] <- "FREDRIK JITTO DE BRUM"


# The names are wrong in KWAJALEIN

dta$can[
  dta$id == 1252 &
    dta$cst == 10 &
    dta$cv1 == 1075
] <- "MICHAEL KABUA"

dta$can[
  dta$id == 1252 &
    dta$cst == 10 &
    dta$cv1 == 762
] <- "JUSTIN DE BRUM"

dta$can[
  dta$id == 1252 &
    dta$cst == 10 &
    dta$cv1 == 631
] <- "JEBAN RIKLON"

dta$can[
  dta$id == 1252 &
    dta$cst == 10 &
    dta$cv1 == 465
] <- "BOBBY MULLER"

dta$can[
  dta$id == 1252 &
    dta$cst == 10 &
    dta$cv1 == 435
] <- "ATAJI BALOS"

dta$can[
  dta$id == 1252 &
    dta$cst == 10 &
    dta$cv1 == 364
] <- "SATO MAIE"

dta$can[
  dta$id == 1252 &
    dta$cst == 10 &
    dta$cv1 == 329
] <- "STEVEN KORI DRIBO"


# The names are wrong in LAE

dta$can[
  dta$id == 1252 &
    dta$cst == 11 &
    dta$cv1 == 240
] <- "RELANG LEMARI"

dta$can[
  dta$id == 1252 &
    dta$cst == 11 &
    dta$cv1 == 78
] <- "ATBI RIKLON"

dta$can[
  dta$id == 1252 &
    dta$cst == 11 &
    dta$cv1 == 38
] <- "RINO PHILLIP"


# One name is wrong in LIB

dta$can[
  dta$id == 1252 &
    dta$cst == 12 &
    dta$cv1 == 63
] <- "RUDY PAUL"


# The names are wrong in LIKIEP

dta$can[
  dta$id == 1252 &
    dta$cst == 13 &
    dta$cv1 == 323
] <- "DONALD CAPELLE"

dta$can[
  dta$id == 1252 &
    dta$cst == 13 &
    dta$cv1 == 304
] <- "TOM KIJINER"

dta$can[
  dta$id == 1252 &
    dta$cst == 13 &
    dta$cv1 == 181
] <- "JOHN BUNGITAK"


# The names are wrong in MAJURO

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 2639
] <- "ALIK ALIK"

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 2636
] <- "WILFRED KENDALL"

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 2494
] <- toupper("Jurelang Zedkaia")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 2436
] <- toupper("Brenson Wase")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 2278
] <- toupper("Witten Philippo")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 1701
] <- toupper("Phillip Muller")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 1551
] <- toupper("David Kramer")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 1480
] <- toupper("Jiba Kabua")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 1340
] <- toupper("Jack Jorbon")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 1160
] <- toupper("Charles Takao Domnick")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 605
] <- toupper("Rosalie Konou")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 592
] <- toupper("Carmen Milne Bigler")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 294
] <- toupper("John Milne")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 276
] <- toupper("Bill Capelle")

dta$can[
  dta$id == 1252 &
    dta$cst == 14 &
    dta$cv1 == 213
] <- toupper("Edwin Lakien")



# The names are wrong in MALOELAP

dta$can[
  dta$id == 1252 &
    dta$cst == 15 &
    dta$cv1 == 391
] <- toupper("Michael Konelios")

dta$can[
  dta$id == 1252 &
    dta$cst == 15 &
    dta$cv1 == 193
] <- toupper("Langmos Hermios")

dta$can[
  dta$id == 1252 &
    dta$cst == 15 &
    dta$cv1 == 32
] <- toupper("Taji Anjo")


# The names are wrong in MEJIT

dta$can[
  dta$id == 1252 &
    dta$cst == 16 &
    dta$cv1 == 384
] <- toupper("Helkena Anni")

dta$can[
  dta$id == 1252 &
    dta$cst == 16 &
    dta$cv1 == 372
] <- toupper("Dennis Momotaro")

dta$can[
  dta$id == 1252 &
    dta$cst == 16 &
    dta$cv1 == 231
] <- toupper("Sapon Keju")

dta$can[
  dta$id == 1252 &
    dta$cst == 16 &
    dta$cv1 == 135
] <- toupper("Wallace Peter")

dta$can[
  dta$id == 1252 &
    dta$cst == 16 &
    dta$cv1 == 113
] <- toupper("Frank Horiuchi")

dta$can[
  dta$id == 1252 &
    dta$cst == 16 &
    dta$cv1 == 108
] <- toupper("Luckner Abner")


# The names are wrong in MILI

dta$can[
  dta$id == 1252 &
    dta$cst == 17 &
    dta$cv1 == 548
] <- toupper("Tadashi Lometo")

dta$can[
  dta$id == 1252 &
    dta$cst == 17 &
    dta$cv1 == 489
] <- toupper("Kejjo Bien")


# The names are wrong in NAMDRIK

dta$can[
  dta$id == 1252 &
    dta$cst == 18 &
    dta$cv1 == 266
] <- toupper("Mattlan Zackhras")

dta$can[
  dta$id == 1252 &
    dta$cst == 18 &
    dta$cv1 == 178
] <- toupper("Tony de Brum")

dta$can[
  dta$id == 1252 &
    dta$cst == 18 &
    dta$cv1 == 54
] <- toupper("Carl Heine")

dta$can[
  dta$id == 1252 &
    dta$cst == 18 &
    dta$cv1 == 11
] <- toupper("Elson Lenne")


# One name is wrong in NAMU

dta$can[
  dta$id == 1252 &
    dta$cst == 19 &
    dta$cv1 == 324
] <- toupper("Kaiboke Kabua")


# The names are wrong in RONGELAP

dta$can[
  dta$id == 1252 &
    dta$cst == 20 &
    dta$cv1 == 241
] <- toupper("Abacca Anjain-Maddison")

dta$can[
  dta$id == 1252 &
    dta$cst == 20 &
    dta$cv1 == 224
] <- toupper("Kenneth Kedi")

dta$can[
  dta$id == 1252 &
    dta$cst == 20 &
    dta$cv1 == 159
] <- toupper("Julian Riklon")


# The names are wrong in UJAE and no candidate got 13 votes
# https://web.archive.org/web/20040329111337/http://www.yokwe.net/electionresults/index.php?path=Ujae/

dta$can[
  dta$id == 1252 &
    dta$cst == 21 &
    dta$cv1 == 95
] <- toupper("Caios Lucky")

dta$can[
  dta$id == 1252 &
    dta$cst == 21 &
    dta$cv1 == 88
] <- toupper("Frederick Muller")

dta$can[
  dta$id == 1252 &
    dta$cst == 21 &
    dta$cv1 == 40
] <- toupper("Alee Alik")

dta$can[
  dta$id == 1252 &
    dta$cst == 21 &
    dta$cv1 == 15
] <- toupper("Antonio Eliu")

dta <-
  dta |>
  filter(!(id == 1252 & cst == 21 & cv1 == 13))


# The names are wrong in UTRIK

dta$can[
  dta$id == 1252 &
    dta$cst == 22 &
    dta$cv1 == 272
] <- toupper("Hiroshi V. Yamamura")

dta$can[
  dta$id == 1252 &
    dta$cst == 22 &
    dta$cv1 == 268
] <- toupper("Amenta Matthew")


# The names are wrong in WOTHO

dta$can[
  dta$id == 1252 &
    dta$cst == 23 &
    dta$cv1 == 147
] <- toupper("Fountain Inok")

dta$can[
  dta$id == 1252 &
    dta$cst == 23 &
    dta$cv1 == 100
] <- toupper("David Kabua")

dta$can[
  dta$id == 1252 &
    dta$cst == 23 &
    dta$cv1 == 32
] <- toupper("Namar N. Nashon")


# Litokwa Tomeing ran unopposed in WOTJE

dta$can[
  dta$id == 1252 &
    dta$cst == 24
] <- toupper("Litokwa Tomeing")
