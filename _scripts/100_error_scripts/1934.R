# Eswatini (August, 2018)

# Data from:
#
# https://www.elections.org.sz/2023/wp-content/uploads/2023/08/2018-NATIONAL-ELECTIONS-REPORT-1.pdf

# In Gege, Kunene Musa Sydney won, not Lukhele Sbubso Sonyboy.

dta$seat[
  dta$id == 1934 &
    dta$cst == 2 &
    dta$can == "Lukhele Sbubso Sonyboy"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 2 &
    dta$can == "Kunene Musa Sydney"
] <- 1


# In Hosea, Mabuza Bacede Mduduzi won, not Shongwe Sfso Samuel.

dta$seat[
  dta$id == 1934 &
    dta$cst == 5 &
    dta$can == "Shongwe Sfso Samuel"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 5 &
    dta$can == "Mabuza Bacede Mduduzi"
] <- 1


# In Kubuta, Mabuza Musa Mlamuli won, not Dbmini Robert Sioatja.

dta$seat[
  dta$id == 1934 &
    dta$cst == 6 &
    dta$can == "Dbmini Robert Sioatja"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 6 &
    dta$can == "Mabuza Musa Mlamuli"
] <- 1


# In Kumethula, Masuku Derrick Mtaki won, not Fakudze Shia.

dta$seat[
  dta$id == 1934 &
    dta$cst == 8 &
    dta$can == "Fakudze Shia"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 8 &
    dta$can == "Masuku Derrick Mtaki"
] <- 1


# In Maseyisini, Dlamini Mduduzi Duncan won, not Mabuza Thulani Alfred.

dta$seat[
  dta$id == 1934 &
    dta$cst == 24 &
    dta$can == "Mabuza Thulani Alfred"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 24 &
    dta$can == "Dlamini Mduduzi Duncan"
] <- 1


# In Sandleni, Gama Noah Mduduzi won, not Vabuza Zakttee Vshengu.

dta$seat[
  dta$id == 1934 &
    dta$cst == 50 &
    dta$can == "Vabuza Zakttee Vshengu"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 50 &
    dta$can == "Gama Noah Mduduzi"
] <- 1


# In Shiselweni 1, Ntshangase Christian Myekeni won, not Dbmid Twoboy Thulani.

dta$seat[
  dta$id == 1934 &
    dta$cst == 51 &
    dta$can == "Dbmid Twoboy Thulani"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 51 &
    dta$can == "Ntshangase Christian Myekeni"
] <- 1


# In Shiselweni 2, Mpanza Strydom Mtray won, not Dbmili MdumseniThembankosi.

dta$seat[
  dta$id == 1934 &
    dta$cst == 52 &
    dta$can == "Dbmili MdumseniThembankosi"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 52 &
    dta$can == "Mpanza Strydom Mtray"
] <- 1


# In Sigwe, Ngcamphalala David Made Cruser won, not Dblamini Phila Justice.

dta$seat[
  dta$id == 1934 &
    dta$cst == 53 &
    dta$can == "Dblamini Phila Justice"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 53 &
    dta$can == "Ngcamphalala David Made Cruser"
] <- 1


# In Somntongo, Mbhamali Dumsani won, not Dludlu Cindy Barbara.

dta$seat[
  dta$id == 1934 &
    dta$cst == 57 &
    dta$can == "Dludlu Cindy Barbara"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 57 &
    dta$can == "Mbhamali Dumsani"
] <- 1


# In Zombodze Emuva, Kunene Mizo Mbhekeni won, not Thwala Titus.

dta$seat[
  dta$id == 1934 &
    dta$cst == 59 &
    dta$can == "Thwala Titus"
] <- 0

dta$seat[
  dta$id == 1934 &
    dta$cst == 59 &
    dta$can == "Kunene Mizo Mbhekeni"
] <- 1
