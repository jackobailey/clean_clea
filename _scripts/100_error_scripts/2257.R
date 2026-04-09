
# Lebanon (June 1929)

# Data from:
#
# https://searchworks.stanford.edu/view/13234931
# https://www.lorientlejour.com/article/623166/Les_lecteurs_ont_voix_au_chapitre.html
# https://www.lp.gov.lb/CustomPage?Id=9

# The above sources suggest that the election took place in two rounds: one on
# 2 June and one on 16 June. The contents of the first source reference "les
# élections législatives des 2 et 16 juin 1929". The second then corroborates
# the date of the first round. The third source then shows that the term started
# soon after in July, suggesting that this date is correct. As such, I will
# replace the missing date with June.

dta$mn[dta$id == 2257] <- 6
