
# Guinea-Bissau (March, 2004)

# Cases in the Africa and Europa constituencies are duplicated 15 times. The IPU
# says that they were not filled, as nationals overseas were not permitted to
# vote by the national authorities. It appears that this was due to financial
# reasons, not that the elections were held but not filled for some reason.
# As such, I will remove these cases.
#
# https://data.ipu.org/election-summary/HTML/2133_04.htm
# https://www.eeas.europa.eu/sites/default/files/eu_eom_guinea_bissau_2008_-_final_report_eng.pdf

dta <-
  dta |>
  filter(!(id == 46 & cst %in% 22:23))


# In district 24, Partido Unido Social Democrático won 4,350 votes, not 350.
# http://www.cne.gw/images/docs/Legislativas_2004.pdf

dta$pv1[
  dta$id == 46 &
    dta$cst == 24 &
    dta$pty == 19
] <- 4350
