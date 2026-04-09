
# Greece (May, 2023)

# According to Wikipedia:
#
# A 2019 law granted the right to vote for Greeks abroad who have lived for two
# years in Greece during the previous 35 years and who have submitted a tax
# return during the year of the election or the previous year. Voters from
# abroad choose the national-wide ballot of their desired party without choosing
# candidates, and their vote is counted equally in final results.
#
# https://en.wikipedia.org/wiki/June_2023_Greek_parliamentary_election#By_constituency
#
# This suggests that the overseas results are effectively 'folded into' the
# national level constituency. As such, I will add the results in and then drop
# the overseas constituency, since it isn't actually a constituency that elects
# representatives.

for(i in unique(dta$pty[dta$id == 2231 & dta$cst == 44])){

  dta$pv1[
    dta$pty == i &
      dta$id == 2231 &
      dta$cst == 901
  ] <-
    dta$pv1[
      dta$pty == i &
        dta$id == 2231 &
        dta$cst == 901
    ] +
    dta$pv1[
      dta$pty == i &
        dta$id == 2231 &
        dta$cst == 44
    ]

}

dta <-
  dta |>
  filter(!(id == 2231 & cst == 44))
