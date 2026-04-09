
# Slovenia, (October 2004)

# The label "zdruzena lista socialnih demokratov" is coded as both pty == 14 and
# pty == 25 in this election. These are not the same party as far as I can tell.
# One is the UNITED LIST OF SOCIAL DEMOCRATS (14). The other is UNITED FOR AN
# INDEPENDENT AND JUST SLOVENIA (25). I will rename 25.
#
# https://web.archive.org/web/20140308084315/http://www.dvk-rs.si:80/arhivi/dz2004/en/html/rez_ka7.htm

dta$pty_n[
  dta$id == 1754 &
    dta$pty == 25
] <- "united for an independent and just slovenia"
