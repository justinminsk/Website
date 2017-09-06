#--------------------------------------------

install.packages("Lahman")
#instal the package

#---------------------------------------------

library(Lahman)
#init the package

#---------------------------------------------

colnames(Batting)
#look at column names of package

#---------------------------------------------

Batting %>%
  select(playerID, yearID, teamID, HR) %>%
  filter(teamID == "NYA" & yearID == 1927)
#take from batting the playerID, yearID, HR and then filter so the table only contains NY Yankees from the year 1927

#---------------------------------------------

Batting %>%
  select(playerID, yearID, teamID, HR) %>%
  filter(HR > 39 & teamID == "NYA")

#---------------------------------------------

Batting %>%
  select(playerID, yearID, teamID, HR, SO) %>%
  filter(HR > 40 & SO < 60)

#---------------------------------------------

Batting %>%
  select(playerID, yearID, teamID, HR) %>%
  filter(HR > 30 & teamID == "PHI" & yearID >= 1970 & yearID < 1980)

#---------------------------------------------

#new topic arrange()

#---------------------------------------------

Batting %>%
  select(playerID, yearID, teamID, HR) %>%
  filter(HR > 50) %>%
  arrange(desc(HR))

#---------------------------------------------

Batting %>%
  select(playerID, yearID, teamID, SO, AB) %>%
  filter(SO < 10, AB > 400) %>%
  arrange(SO)

#-----------------------------------------------

