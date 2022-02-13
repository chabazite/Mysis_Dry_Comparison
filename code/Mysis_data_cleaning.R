
library(openxlsx)
library(tidyverse)
library(lsmeans)
library(plotly)
library(outliers)
library(dplyr)

#Reading in the data
df_growth<-read.xlsx("../data/Mysis_Pilot.xlsx", sheet="Exp_1",detectDates=T)
df_survival<-read.xlsx("H:/Data Science/Mysis/data/Mysis_Pilot.xlsx", sheet="Survival Census (Progress)",detectDates=T)
df_sex_sort <-read.xlsx("H:/Data Science/Mysis/data/Mysis_Pilot.xlsx", sheet="Sexing",detectDates=T)

#checking data parameters
head(df_growth)
head(df_survival)


#df_Growth Cleanup
#remove unneeded columns from df_growth
#removed age because samples were taken over the course of 3 days, which is why age-category was added
df_growth <- subset(df_growth,select=-c(Time, Age))
#rename columns for ease of use
colnames(df_growth) <- c("Date", "Tank", "Age_Category","Feed_Group","Length_mm","Mass_mg","Condition_Factor")
head(df_growth)

#changes types and create factors where needed
 summary(df_growth)

cols <- c("Tank", "Age_Category","Feed_Group")
df_growth[cols] <- lapply(df_growth[cols], factor)
#check
sapply(df_growth,class)

#reorder age and age category factor levels
df_growth$Age_Category <- factor(df_growth$Age_Category, levels = c("Three Months", "Five Months",
                                                                    "Six Months", "Eight Months",
                                                                    "Nine Months","Twelve Months"))

#Figure out what the NA and "Other" categories are for Age and Tank respectively
df_growth[!complete.cases(df_growth),]#which rows are incomplete - we added Age to the removal category because of this line, its an unneeded column
summary(df_growth)


#standardize tank location
old_tank_list <-  c("7.C.4","7.C.5","7.C.6","7.C.7","7.C.8","7.C.9","7.C.10","7.C.11")
old_tank_list_2nd <- c("7.B.3-4","7.C.3-4","7.C.1-2","7.C.5-6","7.C.7-8","7.C.9-10","7.E.9-10","7.C.11-12")
new_tank_list <-  c("7.E.3-4","7.E.1-2","7.D.7-8","7.E.11-12","7.D.1-2","7.D.3-4","7.E.9-10","7.D.5-6")

#batch change the tank locations based on the lists above which was the first mass move of tanks (readme.md)

df_growth <- df_growth %>%
  mutate(Tank = recode(Tank, !!!setNames(new_tank_list, old_tank_list)))

#batch change again for the second mass move of tanks(readme.md)

df_growth <- df_growth %>%
  mutate(Tank = recode(Tank, !!!setNames(new_tank_list, old_tank_list_2nd)))

#Check to make sure we only have 8 tank levels
summary(df_growth)
levels(df_growth$Tank)


#begin cleaning df_survival
#batch change the tank locations based on the lists above which was the first mass move of tanks (readme.md)

df_survival <- df_survival %>%
  mutate(Tank = recode(Tank, !!!setNames(new_tank_list, old_tank_list)))

#batch change again for the second mass move of tanks(readme.md)

df_survival <- df_survival %>%
  mutate(Tank = recode(Tank, !!!setNames(new_tank_list, old_tank_list_2nd)))

summary(df_survival)

#Change Tank and Group into Factors
df_survival$Tank <- factor(df_survival$Tank)
df_survival$Group <- factor(df_survival$Group)

#Drop total lost, male, female, unknown column
df_survival <- subset(df_survival,select=-c(Lost,Total,Male,Female,Unknown))

#Cleanup Sex_sort data
#remove time column
df_sex_sort <- subset(df_sex_sort, select = -Time)

#Factor Tank and Group
df_sex_sort$Tank <- factor(df_sex_sort$Tank)
df_sex_sort$Group <- factor(df_sex_sort$Group)

