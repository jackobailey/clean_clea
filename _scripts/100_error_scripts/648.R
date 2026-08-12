# United Kingdom (1979)

# Independent Labour candidate in Blyth Eddie Milne is incorrectly recorded as having twice the votes he actually won. This is because there are two Independent Labour votes recorded; we remove the entry with a missing code for cv1

dta <- dta[-which(dta$id == 648 &
                  dta$cst == 80 &
                  dta$pty == 6015 &
                  dta$cv1 == -990), ]
