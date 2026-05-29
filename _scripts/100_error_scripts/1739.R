# Myanmar (November, 2015)

# Data from:
#
# https://en.wikipedia.org/wiki/2015_Myanmar_general_election
# https://themimu.info/election
# https://www.ifes.org/sites/default/files/migrate/pyithu_hluttaw_election_results_2015_with_historical_comparisons.pdf

# In Kyauktaga, the National League for Democracy won, not the National
# Democratic Force.

dta$seat[
  dta$id == 1739 &
    dta$cst == 103 &
    dta$pty == 46
] <- 0

dta$seat[
  dta$id == 1739 &
    dta$cst == 103 &
    dta$pty == 49
] <- 1


# In Hpapun, the Union Solidarity and Development Party won, not the National
# League for Democracy.

dta$seat[
  dta$id == 1739 &
    dta$cst == 56 &
    dta$pty == 49
] <- 0

dta$seat[
  dta$id == 1739 &
    dta$cst == 56 &
    dta$pty == 82
] <- 1


# In Momauk, the National League for Democracy won, not the Union Solidarity
# and Development Party.

dta$seat[
  dta$id == 1739 &
    dta$cst == 160 &
    dta$pty == 82
] <- 0

dta$seat[
  dta$id == 1739 &
    dta$cst == 160 &
    dta$pty == 49
] <- 1


# In Lashio, Dr. Sai Mauk Kham (USDP) won, not U Tun Shwe (NLD).

dta$seat[
  dta$id == 1739 &
    dta$cst == 117 &
    dta$can == "Dr. Sai Mauk Kham" &
    dta$pty == 82
] <- 1

dta$seat[
  dta$id == 1739 &
    dta$cst == 117 &
    dta$can == "U Tun Shwe" &
    dta$pty == 49
] <- 0


# In Monghsat, U Sai Khat Tiya (USDP) won, not U Law Thar@U Sai Thi Tar
# (Wa National Unity Party).

dta$seat[
  dta$id == 1739 &
    dta$cst == 161 &
    dta$can == "U Sai Khat Tiya" &
    dta$pty == 82
] <- 1

dta$seat[
  dta$id == 1739 &
    dta$cst == 161 &
    dta$can == "U Law Thar@U Sai Thi Tar" &
    dta$pty == 86
] <- 0


# In Mongpan, U Sai Kyaw Moe (USDP) won, not U Sai Bo Bo Hlaing
# (Shan Nationalities Democratic Party).

dta$seat[
  dta$id == 1739 &
    dta$cst == 169 &
    dta$can == "U Sai Kyaw Moe" &
    dta$pty == 82
] <- 1

dta$seat[
  dta$id == 1739 &
    dta$cst == 169 &
    dta$can == "U Sai Bo Bo Hlaing" &
    dta$pty == 69
] <- 0


# In Nansang, U Htay Lwin@U D Lone (USDP) won, not U Sai Zaw Win
# (Shan Nationalities League for Democracy).

dta$seat[
  dta$id == 1739 &
    dta$cst == 197 &
    dta$can == "U Htay Lwin@U D Lone" &
    dta$pty == 82
] <- 1

dta$seat[
  dta$id == 1739 &
    dta$cst == 197 &
    dta$can == "U Sai Zaw Win" &
    dta$pty == 70
] <- 0
