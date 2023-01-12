setwd("C:/Users/user/Desktop/Evarcity/Data")
marketing_data=read.csv('Marketing_Data.csv',na.strings = "0")
#Replaing NA values with 0
marketing_data[is.na(marketing_data)]=0
#We don't need data of Adv_No column
#get data without adv_no column
marketing_data=marketing_data[-1]
#Divide the data into training and test set
library('caTools')
sample=sample.split(marketing_data$sales,SplitRatio = 0.80)
trainset=subset(marketing_data,sample==TRUE)
testset=subset(marketing_data,sample==FALSE)
#lm=linearmodel
sale_prediction_model=lm(sales~.,data=trainset)
#apply the model into test set
testset$Predicted_Sales=predict(sale_prediction_model,testset)
