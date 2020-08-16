library(dslabs)
data(murders)
data(na_example)
#Question 1
#Use the $ operator to access the population size data
#and store it in the object pop. Then use the sort
#function to redefine pop so that it is sorted.
#Finally use the [ operator to report the smallest
#population size.
states <- murders$state
states <- sort(states)
states[1]
pop <- murders$population
pop <- sort(pop)
pop[1]

#Question 2
#Now instead of the smallest population size,
#let's find out the row number, in the data
#frame murders, of the state with the smallest
#population size. This time we need to use
#order() instead of sort(). Remember that
#the entries in the vector murders$population
#follow the order of the rows of murders.
pop <- murders$population
ord <- order(pop)
ord[1]

#Question 3
#Write one line of code that gives the
#index of the lowest population entry.
#Use the which.min command.
which.min(murders$population)

#Question 4
#Find the index of the smallest state using
#which.min(murders$population). Define a
#variable states to hold the state names from
#the murders data frame. Combine these
#to find the state name for the
#smallest state.
i <- which.min(murders$population)
states <- murders$state
states[i]

#Question 5
#Define a variable states to be the state
#names from murders. Use rank(murders$population)
#to determine the population size rank (from
#smallest to biggest) of each state. Save
#these ranks in an object called ranks.
#Create a data frame with state names and
#their respective ranks. Call the data
#frame my_df
states <- murders$state
ranks <- rank(murders$population)
my_df <- data.frame(name = states, popRank = ranks)

#Question 6
#Create variables states and ranks to store
#the indexes needed to order the population
#values, using the order command. Create a
#data frame with both variables following
#the correct order. Use the bracket operator
#[ to re-order each column in the data frame.
#The columns of the data frame must be in the
#specific order and have the specific names;
#states, ranks
states <- murders$state
ranks <- rank(murders$population)
ind <- order(murders$population)
my_df <- data.frame(states = states[ind], ranks = ranks[ind])

#Question 7
#The is.na returns a logical vector that
#tells us which entries are NA. Assign
#the logical vector that is returned by
#is.na(na_example) to an object called ind.
#Determine how many NA s na_example has, using
#the sum command.
str(na_example)
mean(na_example)
ind <- is.na(na_example)
sum(ind)

#Question 8
#Write one line of code to compute the
#average, but only for the entries that
#are not NA making use of the ! operator
#before ind.
mean(na_example[!ind])