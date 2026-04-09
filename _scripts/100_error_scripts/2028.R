
# United States (November, 2020)

# Margaret Streicker and Rosa L. DeLauro were candidates in Connecticut-3, not 2
# and Justin C. Paglino has the wrong cst value
# https://en.wikipedia.org/wiki/2020_United_States_House_of_Representatives_elections_in_Connecticut#District_3

dta$cst[
  dta$id == 2028 &
    dta$can %in% c("Margaret Streicker", "Rosa L. DeLauro", "Justin C. Paglino")
] <- 86

dta$cst_n[
  dta$id == 2028 &
    dta$can %in% c("Margaret Streicker", "Rosa L. DeLauro")
] <- "Connecticut-3"


# In California 6, the Democratic candidate won, not the Republican.

dta$seat[
  dta$id == 2028 &
    dta$cst == 27 &
    dta$pty == 583
] <- 0

dta$seat[
  dta$id == 2028 &
    dta$cst == 27 &
    dta$pty == 180
] <- 1


# In Florida 26, the Republican candidate won, not the Democrat.

dta$seat[
  dta$id == 2028 &
    dta$cst == 117 &
    dta$pty == 180
] <- 0

dta$seat[
  dta$id == 2028 &
    dta$cst == 117 &
    dta$pty == 583
] <- 1


# In Florida 27, the Republican candidate won, not the Democrat.

dta$seat[
  dta$id == 2028 &
    dta$cst == 118 &
    dta$pty == 180
] <- 0

dta$seat[
  dta$id == 2028 &
    dta$cst == 118 &
    dta$pty == 583
] <- 1


# In Pennsylvania 1, the Republican candidate won, not the Democrat.

dta$seat[
  dta$id == 2028 &
    dta$cst == 329 &
    dta$pty == 180
] <- 0

dta$seat[
  dta$id == 2028 &
    dta$cst == 329 &
    dta$pty == 583
] <- 1


# In New Jersey 10, the Democratic candidate won 241,522 votes, not 24,152.

dta$pv1[
  dta$id == 2028 &
    dta$cst == 256 &
    dta$pty == 180
] <- 241522

dta$cv1[
  dta$id == 2028 &
    dta$cst == 256 &
    dta$pty == 180
] <- 241522


# Results for Louisiana 5 include both the primary and runoff. Subset to only
# the runoff.

dta <-
  dta |>
  filter(
    !(
      id == 2028 &
        cst == 182 &
        can %in% c(
          "Sandra “Candy",
          "Martin Lemelle Jr",
          "Phillip Snowden",
          "Jesse P. Lagarde",
          "“Scotty” Robinson",
          "Allen Guillory Sr",
          "“Matt” Hasty"
        )
    )
  )

dta$seat[
  dta$id == 2028 &
    dta$cst == 182 &
    dta$can == "Luke J. Letlow"
] <- 1
