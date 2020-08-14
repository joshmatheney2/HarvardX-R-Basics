#Question 1
#Use the function c() to create a numeric vector with
#the average high tempartures in January for Beijing, Lagos
#Paris, Rio de Janeiro, San Juan, and Toronto. The
#average high temeratures are 35, 88, 42, 84, 81, and 30
#degrees Fahrenheit. Call the object temp.
temp <- c(35,88,42,84,81,30)

#Question 2
#The temperatures we stored in temp are from the cities
#Beijing, Lagos, Paris, Rio de Janeiro, San Juan, and
#Toronato. Create a vector with these city names and
#call the object city.
city <- c("Beijing","Lagos","Paris","Rio de Janeiro","San Juan","Toronto")

#Question 3
#Use the names function and the objects defined
#in the previous exercises to associate the
#temperature data with its corresponding city.
names(temp) <- city

#Question 4
#Use the [ and : operators to access the temperature
#of the first three cities in the list, which are
#already stored in temp.
temp[1:3]

#Question 5
#Use the [ operator to access the temperature of Paris
#and San Juan already stored in the temp object.
temp[c("Paris","San Juan")]

#Question 6
#Use the : operator to create a sequence of
#consecutive integers starting at 12 and ending
#at 73 and save it in an object x, then determine
#the length of object x.
x <- 12:73
length(x)

#Question 7
#Create a vector containing all the positive odd numbers
#smaller than 100. The numbers should be in
#ascending order.
seq(1,100,2)

#Question 8
#Create a vector of numbers that starts at 6, does
#not go beyond 55, and adds numbers in increments
#of 4/7. So the first three numbers will be 6, 6+4/7
#and 6+8/7. How many numbers does the list have? Use
#only one line of code to answer both questions.
length(seq(6,55,(4/7)))

#Question 9
#Determine the class of a vector generated with seq
#using the length.out argument. Specifically,
#what is the class of the following object
#a <- seq(1, 10, length.out = 100)?
a <- seq(1,10,length.out=100)
class(a)

#Question 10
#What is the class of the following object
#a <- seq(1, 10)?
a<-seq(1,10)
class(a)

#Question 11
#Confirm the class of 1 is numeric and the class of
#1L is integer
class(1)
class(1L)

#Question 12
#Define the following vector: x <- x(1, 3, 5, "a")
#Notice that x has been coerced into a character string.
#If we assign something new to a vector that we've
#already created, the new definition replaces whatever
#was previously assigned to the vector.
#Convert x to a vector of numbers using the as.numeric()
#function.
x <- c(1, 3, 5,"a")
x
x <- as.numeric(x)