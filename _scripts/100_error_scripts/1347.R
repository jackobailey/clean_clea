
# Zimbabwe (November, 2005)

# In Bikita West, ZANU-PF won the seat
#
# https://web.archive.org/web/20051217183211/http://www.zimfa.gov.zw/current/election%20results.htm

dta$seat[
  dta$id == 1347 &
    dta$cst == 3 &
    dta$pty == 22
] <- 1
