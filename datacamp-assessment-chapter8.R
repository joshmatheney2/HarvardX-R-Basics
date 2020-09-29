library(dslabs)
data(murders)
#Question 1
#Transform the variables using the log base 10 transformation
#Plot the log transformed total murders versus population
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)
log10_population <- log10(murders$population)
log10_total_gun_murders <- log10(murders$total)
plot(log10_population, log10_total_gun_murders)

#Question 2
#Compute the population in millions and save it to the
#object population_in_millions. Create a histogram of
#the state populations using the function hist
population_in_millions <- murders$population/10^6
hist(population_in_millions)

#Question 3
#In one line of code:
#Stratify the state populations by region.
#Generate boxplots for the strata.
#Note that you can achieve this using this
#population~region inside boxplot to generate
#the strata and specify the dataset with the data argument.
boxplot(population~region, data = murders)
