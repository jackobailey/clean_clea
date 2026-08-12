# United Kingdom (April 1992)

# Independent Labour candidate in Coventry South West Dave Nellist is incorrectly recorded as having 21102 votes, twice the 10,551 votes he actually won (source: https://web.archive.org/web/20160304113234/http://www.politicsresources.net/area/uk/ge92/i06.htm)

# This is because there are two Independent Labour votes recorded; we remove the entry with a missing code for cv1

dta <- dta[-which(dta$id == 651 &
                  dta$cst == 161 &
                  dta$pty == 6027 &
                  dta$cv1 == -990), ]
