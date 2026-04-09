# United States (September, 2019)

# Data from:
#
# https://dl.ncsbe.gov/State_Board_Meeting_Docs/Congressional_District_9_Portal/Order_03132019.pdf
# https://en.wikipedia.org/wiki/2019_North_Carolina%27s_9th_congressional_district_special_election
#
# The official North Carolina order explains why the 2018 result was rerun; the
# special-election page is the best available public summary of the replacement
# result.

# Fold the rerun in North Carolina 9 into the 2018 series by reassigning
# election id 1888 to 1887.

dta$yr[
  dta$id == 1888
] <- 2018

dta$mn[
  dta$id == 1888
] <- 1

dta$id[
  dta$id == 1888
] <- 1887
