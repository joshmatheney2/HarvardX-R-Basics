library(dslabs)
data(murders)
#Question 1
#Compute the per 100,000 murder rate
#for each state and store it in an object
#called murder_rate. Then use the logical
#operators to create a logical vector, name
#it low, that tells us which entries of
#murder_rate are lower than 1, and which are
#not, in one line of code.
murder_rate <- murders$total / murders$population * 100000
low <- murder_rate < 1

#Question 2
#Use the results from the previous exercise
#and the function which to determine the
#indices of murder_rate associated with
#values lower than 1.
murder_rate <- murders$total/murders$population*100000
low <- murder_rate < 1
low <- murder_rate < 1

#Question 3
#Use the results from the previous exercise
#to report the names of the states with 
#murder rates lower than 1, using the
#square brackets to retrieve the names
#of the states from the dataset.
murder_rate <- murders$total/murders$population*100000
low <- murder_rate < 1
murders$state[low]

#Question 4
#Define low as before. Use the & operator
#to create a new object ind that is true
#when low is true and the state is in the
#Northeast. Use the brackets [ and ind to show
#the state names that satisfy this condition.
murder_rate <- murders$total/murders$population*100000
low <- murder_rate < 1
ind <- low & murders$region == "Northeast"
murders$state[ind]

#Question 5
#In a previous exercise we computes the
#murder rate for each state and then average
#of these numbers. How many states are below
#the average?
murder_rate <- murders$total/murders$population*100000
avg <- mean(murder_rate)
sum(murder_rate < avg)

#Question 6
#Define a character vector with the
#abbreviations. Start by defining
#an index of the entries of murders$abb
#that match the three abbreviations. Use
#the [ operator to extract the states.
abbs <- c("AK", "MI", "IA")
ind <- match(abbs, murders$abb)
murders$state[ind]

#Question 7
#Which of the following are actual
#abbreviations: MA, ME, MI, MO, MU?
#Define a character vector with the
#abbreviations MA, ME, MI, MO, MU.
abbs <- c("MA", "ME", "MI", "MO", "MU")
abbs%in%murders$abb

#Question 8
#In a previous exercise we computed
#the index abbs%in%murders$abb . Based
#on that, and using the which function
#and the ! operator, get the index of the
#entries of abbs that are not abbreviations.
#Show the entries of abbs that are not actual
#abbreviations.
abbs <- c("MA", "ME", "MI", "MO", "MU")
ind <- which(!abbs%in%murders$abb)
abbs[ind]