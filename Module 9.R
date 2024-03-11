# Module # 9: Visualizations in R

# Setting work directory and installing/loading ggplot2
setwd("C:/Users/force/OneDrive/Desktop/R Programming")
#install.packages("ggplot2)
library(ggplot2)

# Reading in BankWages.csv, then removing column 1 and changing
# job, gender, and minority as factor variables.
data.df <- read.csv("BankWages.csv")
data.df <- data.df[-(1)]
data.df$job <- as.factor(data.df$job)
data.df$gender <- as.factor(data.df$gender)
data.df$minority <- as.factor(data.df$minority)

#Creating plots

# Plot 1 looks at the distribution of types of jobs in the dataset.
plot1 <- ggplot(data.df, aes(x = job)) + geom_bar() +
  ggtitle("Distribution of Jobs") + xlab("Type of Job") +
  ylab("Total Amount of Individuals")

plot1

# Plot 2 looks at the total amount of males and females that have one of the
# three main jobs in this dataset.
plot2 <- ggplot(data.df, aes(gender, after_stat(count))) +
  geom_bar(aes(fill = job), position = "dodge") +
  ggtitle("Distribution of Genders Within Jobs") +
  xlab("Gender") + ylab("Total Amount of Individuals")

plot2

# Plot 3 looks at the the distribution of jobs, but also looks into whether
# some individuals within these jobs might be considered a minority group or not.
plot3 <- ggplot(data.df, aes(job, after_stat(count))) +
  geom_bar(aes(fill = minority), position = "dodge") + 
  ggtitle("Distribution of Jobs and Minorities Present Within Each Job") +
  xlab("Type of Job") + ylab("Total Amount of Individuals")

plot3
