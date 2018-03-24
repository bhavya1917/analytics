#missing values
v1=c(1,2,NA,NA,5)
is.na(v1)
mean(v1,na.rm = T) #removes missing value and then calculate mean
na.omit(v1)
anyNA(v1)
v1[is.na(v1)]=mean(v1,na.rm=T) #sustituting missing values with some value
v1
na.omit(v1)

library(vim)
data(sleep,package = "VIM")
head(sleep)
dim(sleep)
complete.cases(sleep)
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
sum(is.na(sleep$Dream))
mean(is.na(sleep$Deam))
12/62
mean(!complete.cases(sleep))
sum(is.na(sleep))
colSums(is.na(sleep))
rowSums(is.na(sleep))

#tabulate
library(mice)
mice::md.pattern(sleep)

#outlier
marks=c(1:80,100,1000)
marks1=c(1:80,100)
marks
summary(marks)
boxplot(marks1)
boxplot(marks)
