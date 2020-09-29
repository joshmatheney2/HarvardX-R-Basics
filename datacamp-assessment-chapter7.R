library(dplyr)
library(dslabs)
data(murders)
#Question 1
#Use the function mutate to add a murders
#column named rate with the per 100,000 murder
#rate. Make sure you redefine murders as done
#in the example code above.
murders <- mutate(murders, rate = (total/population)*100000)

#Question 2
#Use the function mutate to add a column
#rank containing the rank, from highest to
#lowest murder rate. Make sure you redefine murders.
x <- c(88, 100, 83, 92, 94)
rank(-x)
rate <-  murders$total/ murders$population * 100000
murders <- mutate(murders, rank = rank(-rate))

#Question 3
#Use select to show the state names and
#abbreviations in murders. Just show it,
#do not define a new object.
select(murders, state, abb)

#Question 4
#Use filter to show the top 5 states with
#the highest murder rates. After we add murder
#rate and rank, do not change the murders dataset, 
#show the result. Note that you can filter based on
#the rank column.
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))
filter(murders, rank <= 5)

#Question 5
#Create a new data frame called no_south that
#removes states from the South region. How many
#states are in this category? You can use the function
#nrow for this.
no_south <- filter(murders, region != "South")
nrow(no_south)

#Question 6
#Create a new data frame called murders_nw with
#only the states from the Northeast and the West
#How many states are in this category?
murders_nw <- data.frame(filter(murders, region %in% c("Northeast", "West")))
nrow(murders_nw)

#Question 7
#Add a murder rate column and a rank column as done before
#Create a table, call it my_states, that satisfies
#both the conditions: it is in the Northeast or West
#and the murder rate is less than 1.
#Use select to show only the state name, the rate and the rank
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))
my_states <- data.frame(filter(murders, region %in% c("Northeast", "West") & rate < 1))
select(my_states, state, rate, rank)

#Question 8
#Repeat the previous exercise, but now instead
#of creating a new object, show the result and
#only include the state, rate, and rank columns
#in that order. Use a pipe %>% to do this in just one line.
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))
filter(murders, region %in% c("Northeast", "West") & rate < 1) %>% select(state, rate, rank)

#Question 9
#Use one line of code to create a new data frame,
#called my_states, that has murder rate and rank
#columns (with the rank ordered from highest to lowest),
#considers only states in the Northeast or West which have
#a murder rate lower than 1, and contain only the state,
#rate, and rank columns. The line should have four
#components separated by three %>% operators:
#The original dataset murders
#A call to mutate to add the murder rate and the rank.
#A call to filter to keep only the states from the Northeast
#or West and that have a murder rate below 1.
#A call to select that keeps only the columns with the state
#name, the murder rate, and the rank.
#The line should look something like this my_states <- murders %>% mutate
#something %>% filter something %>% select something. Columns
#in the final data frame MUST be in the order: state, rate, rank.
my_states <- murders %>% mutate(rate =  total / population * 100000, rank = rank(-rate)) %>% filter(region %in% c("Northeast", "West") & rate < 1) %>% select(state, rate, rank)
