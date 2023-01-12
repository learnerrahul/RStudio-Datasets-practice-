setwd("C:/Users/user/Desktop/Evarcity/Data")
titanic=read.csv('titanic-2.csv',na.strings = "")
str(titanic)
# to know status of mising values
any(is.na(titanic$Age))
any(is.na(titanic$Survived))

#to get sum of missing values
sum(is.na(titanic$Age))
sum(is.na(titanic$Survived))


#using apply function
apply(titanic,2,function(x) any(is.na(x)))
apply(titanic,2,function(x) sum(is.na(x)))
apply(titanic,2,function(x) sum(is.na(x)/length(x)*100))

#mean
mean(titanic$Age)
#Removing the NA VALUES
mean(titanic$Age,na.rm = TRUE)
#replacing missing values with mean value
m1=mean(titanic$Age,na.rm = TRUE)
titanic$Age[is.na(titanic$Age)]=m1
mean(titanic$Age)
apply(titanic,2,function(x) sum(is.na(x)/length(x)*100))

#Replace mod value in Embarked column
table(titanic$Embarked)
sort(table(titanic$Embarked),decreasing = TRUE)
sort(table(titanic$Embarked),decreasing = TRUE)[1]
names(sort(table(titanic$Embarked),decreasing = TRUE)[1])
m2=names(sort(table(titanic$Embarked),decreasing = TRUE)[1])
titanic$Embarked[is.na(titanic$Embarked)]=m2
# Checking missing values again for Embarked 
apply(titanic,2,function(x) sum(is.na(x)/length(x)*100))
