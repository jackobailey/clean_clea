### UK (February 1974)

### Bernadette Devlin is counted twice in Mid Ulster
### We remove the entry without cv1
dta <- dta[-which(dta$id == 646 &
                  dta$cst == 408 &
                  dta$pty == 6004 &
                  dta$cv1 == -990), ]
