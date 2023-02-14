# Importing Dataset
Titanic <- read.csv("titanic.csv", stringsAsFactors = FALSE)

# Viewing Dataset
View(Titanic)

# Datatypes Check
str(Titanic)

# Datatype Conversion
Titanic$sex <- as.factor(Titanic$sex)
Titanic$pclass <- as.factor(Titanic$pclass)
Titanic$survived <- as.factor(Titanic$survived)
Titanic$embarked <- as.factor(Titanic$embarked)

# Datatypes Recheck
str(Titanic)

# Express Table for people survived
prop.table(table(Titanic$survived))

# Importing Library
library(ggplot2)


# People Survival Count Bar graph
ggplot(Titanic, aes(x = survived)) + theme_classic() + 
  geom_bar() + 
  labs(y = "Passenger count", title = "Titanic Survival Count")


# Gender wise survival Plot
ggplot(Titanic, aes(x = sex, fill = survived)) + theme_light() + 
  geom_bar() + 
  labs(y = "Passenger count", 
       title = "Titanic Survival Count by gender")


# Plot for survival based on class
ggplot(Titanic, aes(x = pclass, fill = survived)) + theme_light() + 
  geom_bar() + 
  labs(y = "Passenger count", 
       title = "Titanic Survival Count by class")


# Plot for gender based survival from each class
ggplot(Titanic, aes(x = sex, fill = survived)) + theme_light() + 
  facet_grid(~pclass) + geom_bar() + 
  labs(y = "Passenger count", 
       title = "Titanic Survival Count by class and gender")


# Pie chart for survival ratio in each class
ggplot(Titanic, aes(x = "", fill = survived)) + 
  geom_bar(position = "fill") + 
  facet_grid(~pclass) + coord_polar(theta = "y")


# Plot for age group death distribution
ggplot(Titanic, aes(x = age)) + theme_bw() + 
  geom_histogram(binwidth = 5) + 
  labs(y = "passenger count", x = "Age", 
       title = "Titanic Age distribution")


# Plot for age group survival distribution
ggplot(Titanic, aes(x = age, fill = survived)) + 
  theme_bw() + geom_histogram(binwidth = 5) +
  labs(y = "passenger count", x = "Age", 
       title = "Titanic Age distribution")


# Box Plot for survival rate by age
ggplot(Titanic, aes(x = survived, y = age)) + theme_bw() + 
  geom_boxplot() + 
  labs(y = "age", x = "survived", 
       title = "Titanic survival rate by age")


# Density plot
ggplot(Titanic, aes(x = age, fill = survived)) + theme_bw() + 
  facet_wrap(sex~pclass) + geom_density(alpha = 0.5) + 
  labs(y = "age", x = "survived", 
       title = "Titanic survival rate by age, class and gender")
