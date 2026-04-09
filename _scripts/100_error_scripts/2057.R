
# Kenya (August, 2017)

# Data from:
# https://www.iebc.or.ke/uploads/resources/siEABKREDq.pdf

# One case in Matuga is allocated to cst == 10 instead of cst == 9

dta$cst[
  dta$id == 2057 &
    dta$cst_n == "Matuga"
] <- 9


# csts 291 to 337 do not have constituency names. These are available in the
# data report above, so I will rename them.

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 291
] <- "Mombasa"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 292
] <- "Kwale"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 293
] <- "Kilifi"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 294
] <- "Tana River"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 295
] <- "Lamu"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 296
] <- "Taita Taveta"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 297
] <- "Garissa"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 298
] <- "Wajir"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 299
] <- "Mandera"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 300
] <- "Marsabit"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 301
] <- "Isiolo"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 302
] <- "Meru"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 303
] <- "Tharaka-Nithi"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 304
] <- "Embu"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 305
] <- "Kitui"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 306
] <- "Machakos"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 307
] <- "Makueni"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 308
] <- "Nyandarua"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 309
] <- "Nyeri"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 310
] <- "Kyrinyaga"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 311
] <- "Murang'a"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 312
] <- "Kiambu"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 313
] <- "Turkana"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 314
] <- "West Pokot"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 315
] <- "Samburu"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 316
] <- "Trans Nzoia"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 317
] <- "Uasin Gishu"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 318
] <- "Elgeyo Marakwet"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 319
] <- "Nandi"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 320
] <- "Baringo"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 321
] <- "Laikipia"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 322
] <- "Nakuru"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 323
] <- "Narok"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 324
] <- "Kajiado"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 325
] <- "Kericho"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 326
] <- "Bomet"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 327
] <- "Kakamega"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 328
] <- "Vihiga"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 329
] <- "Bungoma"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 330
] <- "Busia"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 331
] <- "Siaya"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 332
] <- "Kisumu"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 333
] <- "Homa Bay"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 334
] <- "Migori"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 335
] <- "Kishi"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 336
] <- "Nyamira"

dta$cst_n[
  dta$id == 2057 &
    dta$cst == 337
] <- "Nairobi City"
