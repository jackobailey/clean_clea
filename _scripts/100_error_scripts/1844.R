
# Canada (October, 2019)

# Audit note only. I am not correcting anything automatically here.

# Source:
# https://www.elections.ca/res/rep/off/ovr2019app/51/11074E.html
# https://www.elections.ca/res/rep/off/ovr2019app/51/11003E.html
# https://www.elections.ca/res/rep/off/ovr2019app/51/11098E.html
# https://www.elections.ca/res/rep/off/ovr2019app/51/11038e.html

# In cst == 117 (Guelph), the Liberals won the seat

dta$seat[
  dta$id == 1844 &
    dta$cst == 117 &
    dta$pty == 38
] <- 0

dta$seat[
  dta$id == 1844 &
    dta$cst == 117 &
    dta$pty == 42
] <- 1


# In cst == 157 (Laurier--Sainte-Marie), the Liberals won the seat

dta$seat[
  dta$id == 1844 &
    dta$cst == 157 &
    dta$pty == 72
] <- 0

dta$seat[
  dta$id == 1844 &
    dta$cst == 157 &
    dta$pty == 42
] <- 1


# In cst == 176 (Markham--Unionville), the Conservatives won the seat

dta$seat[
  dta$id == 1844 &
    dta$cst == 176 &
    dta$pty == 42
] <- 0

dta$seat[
  dta$id == 1844 &
    dta$cst == 176 &
    dta$pty == 23
] <- 1


# In cst == 298 (Terrebonne), the Bloc Quebecois won the seat

dta$seat[
  dta$id == 1844 &
    dta$cst == 298 &
    dta$pty == 42
] <- 0

dta$seat[
  dta$id == 1844 &
    dta$cst == 298 &
    dta$pty == 8
] <- 1
