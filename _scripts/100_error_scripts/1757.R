
# Slovenia (July, 2014)

# For some reason, parties that won no seats are coded as -990

dta$seat[
  dta$id == 1757 &
    dta$seat == "-990"
] <- 0


# The SDS won two seats in Postojna, not 1
# https://www.dvk-rs.si/arhivi/dz2014/rezultati/izvoljeni_kandid_po_strankah.html

dta$seat[
  dta$id == 1757 &
    dta$cst == 2 &
    dta$pty == 10
] <- 2
