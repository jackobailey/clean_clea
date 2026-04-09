
# Korea (May, 1948)

# Data come from:
#
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거
#
# And the constituency-level results
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_서울시
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_경기도
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_강원도
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_충청남도
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_충청북도
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_전라남도
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_전라북도
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_경상남도
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_경상북도
# https://ko.wikipedia.org/wiki/대한민국_제헌_국회의원_선거_제주도

# In chungcheongbuk 3, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 3
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 3 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 3])
] <- 1


# In chungcheongbuk 5, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 5
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 5 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 5])
] <- 1


# In chungcheongbuk 7, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 7
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 7 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 7])
] <- 1


# In chungcheongbuk 10, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 10
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 10 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 10])
] <- 1


# In chungcheongbuk 11, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 11
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 11 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 11])
] <- 1


# In chungcheongbuk 12, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 12
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 12 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 12])
] <- 1


# In chungcheongnam 1, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 13
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 13 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 13])
] <- 1


# In chungcheongnam 2, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 14
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 14 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 14])
] <- 1


# In chungcheongnam 12, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 21
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 21 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 21])
] <- 1


# In chungcheongnam 14, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 26
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 26 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 26])
] <- 1


# In chungcheongnam 15, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 27
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 27 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 27])
] <- 1


# In chungcheongnam 17, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 29
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 29 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 29])
] <- 1


# In chungcheongnam 18, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 30
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 30 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 30])
] <- 1


# In gangwon 5, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 36
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 36 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 36])
] <- 1


# In gangwon 6, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 37
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 37 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 37])
] <- 1


# In gangwon 7, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 38
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 38 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 38])
] <- 1


# In gangwon 8, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 39
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 39 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 39])
] <- 1


# In gangwon 12, the seat counts are missing.

dta$seat[
  dta$id == 448 &
    dta$cst == 43
] <- 0

dta$seat[
  dta$id == 448 &
    dta$cst == 43 &
    dta$cv1 == max(dta$cv1[dta$id == 448 & dta$cst == 43])
] <- 1


# At this point, I am content that we can allocate the seat to the candidate
# with the largest vote count since all the district magnitudes are 1.

dta <-
  dta |>
  group_by(id, cst) |>
  mutate(
    seat =
      case_when(
        id == 448 & cv1 == max(cv1, na.rm = TRUE) ~ 1,
        id == 448 ~ 0,
        TRUE ~ seat
      )
  ) |>
  ungroup()
