library(dslabs)
data(murders)
#Question 1
#Use vector arithmetic to convert temp
#to Celsius. Create a data frame called
#city_temps with the city names and
#temperatures in Celsius.
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
temp <- c(35, 88, 42, 84, 81, 30)
temp <- 5/9*(temp-32)
city_temps <- data.frame(name = city, temperature = temp)

#Question 2
#What is the sum of the following
#equation: 1 + 1/2^2 + 1/3^2 + ... +
#1/100^2 ? Thanks to Euler we know
#it should be close to pi^2/6. Define
#an object x that contains the numbers 1
#through 100.
x <- 1:100
sum(1/x^2)

#Question 3
#Compute the per 100,000 murder rate
#for each state and store it in the object
#murder_rate. Then compute the average
#of the state murder rates for the US
#using the function mean. What is this average?
murder_rate <- (murders$total/murders$population)*100000
mean(murder_rate)