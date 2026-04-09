
# Bulgaria (March, 2017)

# https://www.cambridge.org/core/journals/ps-political-science-and-politics/article/abs/bulgarian-diaspora-vote-a-case-of-a-large-untapped-electoral-potential/F3108E7638C64E40531C51AEA03AEF0F
#
# The data include an "abroad" constituency, but this adds to the general vote

dta <-
  dta |>
  filter(!(id == 1780 & cst == 32))
