
# Indonesia (April, 2009)

# Data from:
#
# https://web.archive.org/web/20200314131444/https://www.kpu.go.id/dmdocuments/angka_26_30.pdf
# https://web.archive.org/web/20140404154142/http://kpu.go.id/dmdocuments/angka_31_33.pdf
# https://web.archive.org/web/20140404153221/http://kpu.go.id/dmdocuments/angka_34_35.pdf
# https://web.archive.org/web/20140405060151/http://kpu.go.id/dmdocuments/angka_36_38.pdf
# https://web.archive.org/web/20140405051127/http://kpu.go.id/dmdocuments/angka_39_43.pdf

# The district magnitude in Sumut2 (North Sumatra), was 10, not 9
# https://id.wikipedia.org/wiki/Pemilihan_umum_legislatif_Indonesia_2009
# https://id.wikipedia.org/wiki/Sumatera_Utara_II_(daerah_pemilihan)

dta$mag[
  dta$id == 1432 &
    dta$cst == 76
] <- 10


# The district magnitude in Sumut3 (North Sumatra), was 10, not 9
# https://id.wikipedia.org/wiki/Pemilihan_umum_legislatif_Indonesia_2009
# https://id.wikipedia.org/wiki/Sumatera_Utara_III_(daerah_pemilihan)

dta$mag[
  dta$id == 1432 &
    dta$cst == 77
] <- 10
