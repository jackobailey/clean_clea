
# Benin (March, 1995)

# For some reason, parties that won no seats are coded as having missing seats.

dta$seat[
  dta$id == 1154 &
    dta$seat == -990
] <- 0


# In Atlantique 3, Front D’Action pour le Renouveau et le Developpement
# (FARD-ALAFIA) have been allocated 3 seats. This is almost certainly a mistake
# since Benin used Hare quotas.
# https://sgg.gouv.bj/doc/loi-1994-015/download

dta$seat[
  dta$id == 1154 &
    dta$cst == 6 &
    dta$pty == 5
] <- 0


# In Borgou 3, the district magnitude was 4 but only 2 seats are allocated here.
# Article 4 of the electoral law says that they use Hare to allocate seats, then
# allocate the remainders using highest averages. The Hare portion gives 1 seat
# to pty == 5. The highest averages portion gives pty %in% c(5, 5021, and 25) a
# seat each. In total, this is 5 == 2, 5021 == 1, 25 == 1. I will assume that
# this is correct.
# https://sgg.gouv.bj/doc/loi-1994-015/download

# floor(peek(1154, 9)$pv1 / (sum(peek(1154, 9)$pv1) / 4))
#
# electoral::seats_ha(
#   parties = peek(1154, 9)$pty,
#   votes =
#     c(
#       floor(peek(1154, 9)$pv1[1]) - floor(sum(peek(1154, 9)$pv1) / 4),
#       peek(1154, 9)$pv1[-1]
#     ),
#   n_seats = 3,
#   method = "dhondt"
# )

dta$seat[
  dta$id == 1154 &
    dta$cst == 9 &
    dta$pty == 5
] <- 2

dta$seat[
  dta$id == 1154 &
    dta$cst == 9 &
    dta$pty == 5021
] <- 1

dta$seat[
  dta$id == 1154 &
    dta$cst == 9 &
    dta$pty == 25
] <- 1
