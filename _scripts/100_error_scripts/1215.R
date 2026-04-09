
# Kazakhstan (January, 2012)

# The district magnitude in KAZAKHSTAN was 98, not missing (-990).
# https://data.ipu.org/election-summary/HTML/2165_12.htm
# https://www.osce.org/files/f/documents/d/9/89489.pdf
# https://www.electionguide.org/elections/id/2337/
#
# Kazakhstan used a single nationwide district with a magnitude of 98. Nine
# additional seats were chosen separately through the Assembly of People and
# are not part of these rows.

dta$mag[
  dta$id == 1215
] <- 98

dta$seat[
  dta$id == 1215
] <- 0

dta$seat[
  dta$id == 1215 &
    dta$pty_n == "People’s Democratic Party"
] <- 83

dta$seat[
  dta$id == 1215 &
    dta$pty_n == "Democratic Party of Kazakhstan Bright Path"
] <- 8

dta$seat[
  dta$id == 1215 &
    dta$pty_n == "Communist People’s Party of Kazakhstan"
] <- 7


# As a nationwide list constituency, I will code this as 900+ for my own purposes

dta$cst[
  dta$id == 1215 &
    dta$cst == 1
] <- 901
