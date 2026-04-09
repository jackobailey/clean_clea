
# New Zealand (October, 2020)

# The district magnitude in National PR district was 48, not missing (-990).
# https://elections.nz/media-and-news/2020/2020-general-election-official-results

dta$mag[
  dta$id == 1978 &
    dta$cst == 901
] <- 48
