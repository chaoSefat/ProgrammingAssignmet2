# Question 1
# Take a look at the 'iris' dataset that comes with R. The data can be loaded with the code:
#   


library(datasets)
data(iris)
#A description of the dataset can be found by running

?iris
# 
# There will be an object called 'iris' in your workspace. 
# In this dataset, what is the mean of 'Sepal.Length' for 
# the species virginica? 
# Please round your answer to the nearest whole number.

iris_dt<- as.data.frame(iris)
iris_dt<- subset(iris_dt, Species=virginica, select = Sepal.Length)
mean(iris_dt$Sepal.Length)

# 
# Continuing with the 'iris' dataset from the previous Question,
# what R code returns a vector of the means of the variables 
# 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

apply(iris[,1:4],2,mean)

#Question 3
#Load the 'mtcars' dataset in R with the following code

library(datasets)
data(mtcars)
?mtcars

 
# How can one calculate the 
# average miles per gallon (mpg) by number of cylinders in the car (cyl)? 
# Select all that apply.

mtcars_dt<- as.data.frame(mtcars)
with(mtcars_dt,tapply(mpg, cyl, mean))

# Question 4
# Continuing with the 'mtcars' dataset from the previous Question, 
# what is the absolute difference between 
# the average horsepower of 4-cylinder cars and 
# the average horsepower of 8-cylinder cars?

mean_hp<-tapply(mtcars_dt$hp,mtcars_dt$cyl,mean)
mean_hp[3]-mean_hp[1]