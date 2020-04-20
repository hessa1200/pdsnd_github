#first
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

head(ny)

head(wash)

head(chi)

# second change
# third change 
# 3 Trip duration
# What is the average travel time for users in different cities?

ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

ny_avg_travel_time <- mean(subset (ny$Trip.Duration, ! is.na(ny$Trip.Duration)))
print (ny_avg_travel_time)

# here it shows the travel time average per month
library(ggplot2)

ggplot(aes(y=Trip.Duration, x=as.numeric(format(as.Date(ny$End.Time), "%m"))), data=ny) +
  geom_jitter(alpha = 1/20) + ylim(0, 1000)+ xlim(0,6)+ geom_line(stat = 'summary', fun.y=mean)+
labs(x = "Month",title="Average travel time for users per Month in New York", y="Trip Duration")

wash_avg_travel_time <- mean(subset (wash$Trip.Duration, ! is.na(wash$Trip.Duration)))
print (wash_avg_travel_time)

chi_avg_travel_time <- mean(subset (chi$Trip.Duration, ! is.na(chi$Trip.Duration)))
print (chi_avg_travel_time)

# Travel Time in Washington is the highest
# In Washingtonwith the avrege time is 1233.953
# In New York the avrege time is 903.6147
# In Chicago the avrege time is 937.1728

#4 User info
#What are the counts of each user type?

ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

summary(wash$User.Type)

library(ggplot2)
ggplot(wash, aes(x=User.Type)) + geom_bar() + labs(x = "User Type",title="Count of User Types in Washington")

summary(ny$User.Type)

library(ggplot2)
ggplot(ny, aes(x=User.Type)) + geom_bar() + labs(x = "User Type",title="Count of User Types in New York")

summary(chi$User.Type)

library(ggplot2)
ggplot(chi, aes(x=User.Type)) + geom_bar() + labs(x = "User Type",title="Count of User Types in Chicago")

#It shown that in all cities the subscriber count is more than the other types
# The total count of Subscriber 121576 in all the cities
# The total count of Customer 30754 in all the cities

# Your solution code goes here
# What are the counts of each gender?

ny = read.csv('new_york_city.csv')
chi = read.csv('chicago.csv')

summary(ny$Gender)

library(ggplot2)
ggplot(ny, aes(x=Gender)) + geom_bar() + labs(title="Count of Gender in New York")

summary(chi$Gender)

library(ggplot2)
ggplot(chi, aes(x=Gender)) + geom_bar() + labs(title="Count of Gender in Chicago")

#It shown that the count of Female is 12159 and Male is 37201 in New York
#It shown that the count of Female is 1723 and Male is 5159 in Chicago

system('python -m nbconvert Explore_bikeshare_data.ipynb')
