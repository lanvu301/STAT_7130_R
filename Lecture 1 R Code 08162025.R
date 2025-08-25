# This is my first R script Example #
# it was writting on 08/18/2028     #
# I will continue to build on this  #
# over the course of the semester   #


a <- 5
b <- a+2
c <- b*5
print(c)
?print

# import our first CSV File #
heart <- read.csv("C:/Users/hray8/Downloads/HEART.csv")

# DO NOT USE # 
# IMPORTS EXCEL AS CSV #
# FAILS #
#heart <- read.csv("C:/Users/hray8/Downloads/HEART.xlsx")

# Prints the first 6 rows #
head(heart)
# calculates the mean of Height and divides by 12 #
# converts inches to feet # 
mean(heart$Height, na.rm = TRUE)/12

?mean