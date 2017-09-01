install.packages("Lahman")
#instal the package
library(Lahman)
#init the package
colnames(Batting)
#look at column names of package
Batting %>%
  select(playerID, yearID, teamID, HR) %>%
  filter(teamID == "NYA" & yearID == 1927)
#take from batting the playerID, yearID, HR and then filter so the table only contains NY Yankees from the year 1927

