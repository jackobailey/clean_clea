
# Bulgaria (July, 2009)

# Bulgaria used a parallel voting system where voters voted in both a FPTP and a
# PR contest in their district. However, the Elections Archive data do not
# distinguish between the two and merge the vote counts from both contests.
#
# See, for instance, Blagoevgrad:
#
# https://en.wikipedia.org/wiki/1st_MMC_–_Blagoevgrad
#
# Then look at the top two vote counts in the data: one is PR, the other FPTP:

peek(1169, 1)

# At the moment, the data are unusable, so I will remove them.

dta <-
  dta |>
  filter(id != 1169)
