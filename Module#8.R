install.packages("plyr")
install.packages("ISLR")
library(plyr)
library(ISLR)

setwd("C:/Users/force/OneDrive/Desktop/RStudio/projects")

# Step 1: Importing dataset into R
Student_assignment_6 <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")
Student_assignment_6

# Creating another dataframe, adding grade average per sex
Student_assignment_6_average <- ddply(Student_assignment_6, "Sex", 
                                      transform, Grade.Average = mean(Grade))
Student_assignment_6_average

# Printing this data into a table
# This will create a .csv file of the dataframe we just created
# It will be in the directory that you assigned in RStudio
write.table(Student_assignment_6_average, "Sorted Average", sep = ",")

# Step 2: Converting the data to a dataframe whose name contains the letter "i"
students_with_i <- subset(Student_assignment_6, grepl("[iI]", Student_assignment_6$Name))
students_with_i

# Step 3: converting this data into a .csv file
# Again, this will go into the directory that you assign in RStudio
write.table(students_with_i, "Data Subset", sep = ",")
