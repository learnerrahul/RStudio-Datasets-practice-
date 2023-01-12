library(ggplot2)
library(dplyr)
View(mpg)
help(mpg)
#Plotting Bar plot for manufacturer column

ggplot(data=mpg,aes(manufacturer))+geom_bar()

#Histogram for cty column

ggplot(data=mpg,aes(cty))+geom_histogram(bins=5,colour='white')

#scatter plot between cty and hwy column

ggplot(data=mpg,aes(cty,hwy))+geom_bin_2d()
ggplot(data=mpg,aes(cty,hwy))+geom_point()

#Box plot of column hwy against fl
ggplot(data=mpg,aes(fl,hwy))+geom_boxplot()
