setwd("C:/Users/user/Desktop/Evarcity/Data")
card_data=read.csv('card.txt')
#to remove missing values
card_data=na.omit(card_data)
library("ggplot2")
ggplot(data=card_data,aes(x=is_fraud))+geom_bar(fill='black')
ggplot(data=card_data,aes(x=site_visits_A,y=is_fraud))+geom_area()
ggplot(data=card_data,aes(x=number_of_transactions,y=is_fraud))+geom_col()
ggplot(data=card_data,aes(x=number_of_transactions,y=is_fraud))+geom_col()

ggplot(data=card_data,aes(x=site_visits_A,y=number_of_transactions))+geom_
ggplot(data=card_data,aes(x=site_visits_A,y=is_fraud))+geom_col()
ggplot(data=card_data,aes(x=site_visits_B,y=is_fraud))+geom_col()
ggplot(data=card_data,aes(x=site_visits_C,y=is_fraud))+geom_col()


ggplot(data=card_data,aes(x=is_fraud))+geom_bar(fill="black")+coord_polar("x")
