library(readxl)
HEART <- read.csv("~/Downloads/HEART.csv")
View(HEART)
mean(HEART$AgeAtDeath, na.rm=TRUE)

str(HEART)

#count the var
table(HEART$Status)

round(prop.table(table(HEART$Weigtht_Status))*100,2)
install.packages("tidyverse")
library(tidyverse)

#filter the og data, only select entries where weight status= overweight
heart_overweight<-HEART %>%
  filter(Weight_Status =="Overweight")

table(HEART$Weight_Status)

#Filter it more for overweight and heavy smoker
heart_overW_heavySmoke1 <-HEART %>% filter(Weight_Status=="Overweight")%>% filter(Smoking_Status=="Heavy (16-25)")

#Option 2
heart_overW_HeavySmoke <- HEART %>%
  filter(Weight_Status=="Overweight" &
  HEART$Smoking_Status %in% c("Heavy(16-25)","Very Heavy (>25)"))
 # %in% is different filter the heart based on the vector provided with the c(etc.etc)


str(heart_overW_HeavySmoke)

#subset on a numeric value
age_at_death_60<- HEART %>%
  filter(AgeAtDeath <60)


#Select columns
heart_simple<- HEART %>%
  select(Status,Sex,AgeAtDeath,Smoking_Status,Weight,BP_Status)

#Combining filtering and select 
