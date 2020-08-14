library(dslabs)
data(murders)

#Question 1
#Use the str function to examine the structure
#of the murders object. Which of the following
#best describes the variables represented in this
#data frame
str(murders)

#Answer: The state name, the abbreviation of the
#state name, the state's region, and the state's
#population and the total number of murders for 2010

#Question 2
#Using the names() function, what are the column
#names used by the murders data fram for the five
#variables
names(murders)

#Question 3
#Use the accessor $ to extract the state abbreviations
#and assign them to the object a. What is the class of
#this object?

#Extract state abbreviations and assign it to a
a<-murders$abb

#Determine the class of a
class(a)

#Question 4
#Use the square brackets [[]] to extract the state
#abbreviations and assign them to the object b

#Extract state abbreviations and assign it to b
b<-murders[["abb"]]

#Check if 'a' and 'b' are identical
identical(a, b)

#Question 5
#Using one line of code, determine the number of 
#regions included in this variable
length(levels(murders$region))

#Question 6
#Use the table() function in one line of code to
#create a table showing the number of states
#per region
table(murders$region)