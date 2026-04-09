# Kenya (December, 1969)

# Data from:
#
# https://s3-eu-west-1.amazonaws.com/s3.sourceafrica.net/documents/7808/kenya-gazette-1969-12-19-vol-lxxi-no-59.pdf

# These results look suspicious: there was one party in the published return and,
# in Meru South-East, the second-placed candidate won the seat. I will drop this
# election from the sample.

dta <-
  dta |>
  filter(id != 2251)
