
# Australia, (June 2019)

# Code pty == 8 is used for "Australian Labor Party" and "Labor". I'll change
# this so that they're all called "Labor"

dta$pty_n[
  dta$id == 2035 &
    dta$pty_n == "Australian Labor Party"
] <- "Labor"
