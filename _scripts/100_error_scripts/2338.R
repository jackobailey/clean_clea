
# Trinidad and Tobago (February, 1928)

# Data from:
#
# https://archive.org/details/blue-book-trinidad-1931/page/109/mode/2up?utm_source=chatgpt.com&q=election

# The document above gives the exact dates of the election in each district on
# page 109. The months are as follows:
#
# cst == 1 (Caroni): March
# cst == 2 (Eastern Counties): January
# cst == 3 (Port-of-Spain): January
# cst == 4 (St George): February
# cst == 5 (St Patrick): February
# cst == 6 (Tobago): February
# cst == 7 (Victoria): January

dta$mn[
  dta$id == 2338 &
    dta$cst %in% c(2, 3, 7)
] <- 1

dta$mn[
  dta$id == 2338 &
    dta$cst %in% 4:6
] <- 2

dta$mn[
  dta$id == 2338 &
    dta$cst == 1
] <- 3
