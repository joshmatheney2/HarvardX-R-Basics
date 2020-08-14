#Question 1
#Using the formula n(n+1)/2 , what is the sum
# of the first 100 positive integers?

#Define the variable
n<-100

#Compute the sum for the first 100 integers
n*(n+1)/2

#Question 2
#Computer the sume for the first 1000 integers

#Define the variable
n<-1000

#Compute the sum for the first 100 integers
n*(n+1)/2

#Question 3
#Run the following code in the R console:
#n<-1000
#x<-seq(1,n)
#sum(x)
n<-1000
x<-seq(1,n)
sum(x)

#Based on the result, what do you think the functions
#seq and sum do?

#Answer: seq creates a list of numbers and sum adds
#them up

#Question 4
#Use one line of code to compute the log, to the base
#10, of the square root of 100
log10(sqrt(100))

#Question 5
#Which of the following will always return the numeric
#value stored in x? You can try out examples and use the
#help system in the R console
x<-51
log(10^x)
log10(x^2)
log(exp(x))
exp(log(x, base = 2))

#Answer = log(exp(x))
