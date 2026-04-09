
# Jordan, (September 2016)

# "Al-‘Ahed (Covenant)" is coded as both pty == 29 and 30. I will use 29.

dta$pty[
  dta$id == 1947 &
    dta$pty_n == "Al-‘Ahed (Covenant)"
] <- 29


# "Al-Adala (Justice)" is coded as both pty == 33 and 34. I will use 33.

dta$pty[
  dta$id == 1947 &
    dta$pty_n == "Al-Adala (Justice)"
] <- 33


# "Al-Aqsa (The Furthest, mosque in Jerusalem)" is coded as pty == 39 and 40.
# I will use 39.

dta$pty[
  dta$id == 1947 &
    dta$pty_n == "Al-Aqsa (The Furthest, mosque in Jerusalem)"
] <- 39


# "Al-Wahduh al-Watania (National Unity)" is coded as both pty == 117 and 118.
# I will use 117.

dta$pty[
  dta$id == 1947 &
    dta$pty_n == "Al-Wahduh al-Watania (National Unity)"
] <- 117


# "Al-Wataniat (National)" is coded as both pty == 120 and 121. I will use 120.

dta$pty[
  dta$id == 1947 &
    dta$pty_n == "Al-Wataniat (National)"
] <- 120


# "Al-Wifaq (Accord)" is coded as both pty == 123 and 124. I will use 123.

dta$pty[
  dta$id == 1947 &
    dta$pty_n == "Al-Wataniat (National)"
] <- 123


# "Al-Yarmouk (region of Irbid)" is coded as both pty == 125 and 126. I will
# use 125.

dta$pty[
  dta$id == 1947 &
    dta$pty_n == "Al-Yarmouk (region of Irbid)"
] <- 125
