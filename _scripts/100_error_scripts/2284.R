
# Nepal (November, 2017)

# Data from:
#
# https://election.gov.np/ecn/uploads/election%20related%20laws/%E0%A4%A8%E0%A4%BF%E0%A4%A6%E0%A5%87%E0%A4%B6%E0%A4%BF%E0%A4%95%E0%A4%BE/%E0%A4%9C%E0%A4%BF%E0%A4%B2%E0%A5%8D%E0%A4%B2%E0%A4%BE%20%E0%A4%B8%E0%A4%AE%E0%A4%A8%E0%A5%8D%E0%A4%B5%E0%A4%AF%20%E0%A4%B8%E0%A4%AE%E0%A4%BF%E0%A4%A4%E0%A4%BF%20%E0%A4%A8%E0%A4%BF%E0%A4%B0%E0%A5%8D%E0%A4%B5%E0%A4%BE%E0%A4%9A%E0%A4%A8%20%E0%A4%A8%E0%A4%BF%E0%A4%A6%E0%A5%87%E0%A4%B6%E0%A4%BF%E0%A4%95%E0%A4%BE%2C%20%E0%A5%A8%E0%A5%A6%E0%A5%AD%E0%A5%AA.pdf

# Nepal Election Commission materials list नेपाली जनता दल as a separate party,
# so I will split it away from नेपाल जनता पार्टी instead of keeping both labels under
# code 31.

dta$pty[
  dta$id == 2284 &
    dta$pty == 31 &
    dta$pty_n == "नेपाली जनता दल"
] <- 20
