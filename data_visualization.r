#Data visualization
count<-table(mtcars$gear)
View(count)
plot(count)
barplot(count)
barplot(count,horiz=TRUE)

barplot(count, main="sample bar plot",
        xlab="Improvement",
        yab="Frequency",
        legend= rownames(count),
        col=c("red","yellow","green"))
pie(count)
salary<-read.csv("Salary_data.csv")
View(salary)
install.packages("ggplot2")
library(ggplot2)
ggplot(salary,aes(x=Experience,y=Salary))+
  geom_point()
ggplot(salary,aes(x=Experience,y=Salary))+
  geom_line()
ggplot(salary,aes(x=Experience,y=Salary))+
  geom_boxplot()

