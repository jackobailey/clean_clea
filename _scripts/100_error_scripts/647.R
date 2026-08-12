### United Kingdom (Oct. 1974)

### Two constituencies have Independent Labour candidates who are
### double-counted.

### Blyth

dta <- dta[-which(dta$id == 647 &
                  dta$cst == 80 &
                  dta$pty == 6087 &
                  dta$cv1 == -990), ]


### Sheffield Brightside
dta <- dta[-which(dta$id == 647 &
                  dta$cst == 513 &
                  dta$pty == 6108 &
                  dta$cv1 == -990), ]
