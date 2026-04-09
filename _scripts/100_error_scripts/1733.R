
# Malta (June, 2017)

# Data from:
#
# https://www.maltatoday.com.mt/news/election-2017/77867/who_has_made_it_to_parliament_elected_mps_as_the_counting_continues
# https://www.independent.com.mt/articles/2017-06-07/local-news/Carm-Mifsud-Bonnici-Frederick-Azzopardi-take-two-additional-PN-seats-making-up-total-of-30-PN-MPs-6736175185

# The district winners reported during the general-election count for District 04
# are Fearne, Chris; Mizzi, Konrad; Parnis, Silvio; Camilleri, Byron; and
# Azzopardi, Jason. Mifsud Bonnici, Carm. did not win one of the five district
# seats there and is set to 0 here.
#
# The district winners reported for District 13 are Refalo, Anton; Said,
# Chris; Portelli, Marthese; Caruana, Justyne; and Camilleri, Clint.
# Azzopardi, Frederick did not win one of the five district seats there and is
# set to 0 here.
#
# The two candidates above were instead awarded the PN's two additional
# proportionality seats after the district results were finalised. Those are
# not treated here as district seats won in the general-election count.

dta$seat[
  dta$id == 1733 &
    dta$seat > 0
] <- 1

dta$seat[
  dta$id == 1733 &
    dta$cst == 4 &
    dta$can == "Mifsud Bonnici, Carm."
] <- 0

dta$seat[
  dta$id == 1733 &
    dta$cst == 13 &
    dta$can == "Azzopardi, Frederick"
] <- 0
