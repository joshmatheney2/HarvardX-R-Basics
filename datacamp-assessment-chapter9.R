library(dslabs)
data(murders)
#Question 1
#What will this conditional expression return? Run it from the console.
x <- c(1,2,-3,4)
if(all(x>0)){
  print("All Positives")
} else{
  print("Not All Positives")
}
#Answer: Not All Positives

#Question 2
#Which of the following expressions is always FALSE when at
#east one entry of a logical vector x is TRUE? You can try
#examples in the R console.
#Answer: all(!x)

#Question 3
#Use the ifelse function to write one line of code that
#assigns to the object new_names the state abbreviation
#when the state name is longer than 8 characters and assigns
#the state name when the name is not longer than 8 characters.
new_names <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)

#Question 4
#Create a function sum_n that for any given value,
#say n, creates the vector 1:n, and then computes the
#sum of the integers from 1 to n
#Use the function you just defined to determine the
#sum of integers from 1 to 5,000.
sum_n <- function(n){
  y <- c(1:n)
  sum(y)
}
sum_n(5000)

#Question 5
#Create a function altman_plot that takes two
#arguments x and y and plots y-x (on the y-axis)
#against x+y (on the x-axis).
altman_plot <- function(x, y) {
  plot(x+y, y-x)
}

#Question 6
#After running the code below, what is the value of x?
x <- 3
my_func <- function(y){
  x <- 5
  y+5
}
x

#Question 7
#Write a function compute_s_n that for any given n computes
#the sum Sn=12+22+32+⋯+n2.
#Report the value of the sum when n=10.
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
compute_s_n(10)

#Question 8
#Define an empty numeric vector s_n of size 25 using
#s_n <- vector("numeric", 25)
#Compute the the sum when n is equal to each integer
#from 1 to 25 using the function we defined in the previous
#exercise: compute_s_n
#Save the results in s_n
s_n <- vector("numeric", 25)
n <- 1:25
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

#Question 9
#Define n <- 1:25. Note that with this we can use for(i in n)
#Use a for loop to save the sums into a vector s_n <- vector("numeric", 25)
#Plot s_n (on the y-axis) against n (on the x-axis).
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
n <- 1:25
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
plot(n, s_n)

#Question 10
#Confirm that s_n and n(n+1)(2n+1)/6 are the same
#using the identical command.
identical(s_n, n*(n+1)*(2*n+1)/6)

