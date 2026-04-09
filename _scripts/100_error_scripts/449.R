
# Korea (May, 1950)

# Data come from:
#
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거
#
# And the constituency-level results
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_서울특별시
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_경기도
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_강원도
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_충청북도
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_충청남도
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_전라북도
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_전라남도
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_경상북도
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_경상남도
# https://ko.wikipedia.org/wiki/대한민국_제2대_국회의원_선거_제주도

# As in the previous case (id == 448), I am content that we can allocate the
# seat to the candidate with the largest vote count since all the district
# magnitudes are 1.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 449,
    votes = "cv1"
  )
