library(ggplot2)

Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

First_f <- factor(First, levels = c(0, 1), labels = c("good", "bad"))
First_f
Second_f <- factor(Second, levels = c(0, 1), labels = c("good", "bad"))
Second_f
FD_f <- factor(FinalDecision, levels = c(0, 1), labels = c("low", "high"))
FD_f

bpdf <- data.frame(Frequency, BP, First, First_f, Second, Second_f, FinalDecision, FD_f)
bpdf

boxplot(Frequency)
hist(Frequency)
boxplot(BP)


ggplot(data = subset(bpdf, !is.na(First_f)), aes(x = First_f)) + geom_bar()

ggplot(bpdf, aes(Second_f)) + geom_bar()

ggplot(bpdf, aes(FD_f)) + geom_bar()
