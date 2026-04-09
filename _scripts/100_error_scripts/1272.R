
# Saint Kitts and Nevis (October, 1952)

# Data from:
#
# https://pdba.georgetown.edu/Elecdata/Kitts/parl52_75.html
# https://en.wikipedia.org/wiki/1952_Saint_Kitts-Nevis-Anguilla_general_election

# Sources say that the election resulted in 8 members being elected. However,
# St. Kitts-Nevis-Anguilla used first-past-the-post (I think!) and the data
# include only 7 districts, implying that only 7 could be elected. If I allocate
# the seat to the largest party in each district, we approach the result shown
# on Wikipedia, but one seat for the St. Kitts Workers Party is missing.

# Judging by a snippet of the text that I can see on Google Books page 14 of
# *General Elections in the Eastern Caribbean: A Handbook* by Patrick Emmanuel
# that one seat was uncontested. So that I don't have to delete these data, I
# will ignore this missing case for now and impute the seat winners based on the
# largest party in each district.

dta <-
  impute_fptp_seats(
    dta = dta,
    id = 1272,
    votes = "pv1"
  )
