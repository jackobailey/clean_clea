
# Andorra (February, 1997)

# Data from:
#
# https://www.eleccions.ad/eleccions-anteriors
# https://en.wikipedia.org/wiki/1997_Andorran_parliamentary_election

# In Andorra, voters vote in a national constituency (PR) and a parish (party
# block voting) from closed lists. As such, I will drop the candidate names.

dta$can[dta$id == 1111] <- "-990"
