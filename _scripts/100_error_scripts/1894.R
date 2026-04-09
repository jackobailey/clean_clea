
# Vanuatu, (March 1998)

# Code pty == 52 is used for "Jon Frum" and "Movement Blong Yumi" in this
# election. I will move "Movement Blong Yumi" to 53.

dta$pty[
  dta$id == 1894 &
    dta$pty_n == "Movement Blong Yumi"
] <- 53
