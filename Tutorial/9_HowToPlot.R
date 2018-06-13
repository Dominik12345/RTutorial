#############################
# 10.0 Create your style    # 
#############################

# Check colors()
colors()
my.color <-  c("tomato3" ,"wheat2","plum2", "salmon2" ,"ivory", "peachpuff4"
                ,"blanchedalmond") 

#############################
# 10.1 Bars and Pie Plots   # 
#############################

data <- iris

# colored bars and pies
barplot(table(data$Sepal.Length), col = my.color)
pie(table(data$Species),col = my.color)

# colored and labeled historgram
hist(iris$Sepal.Length,    # apply the hist function 
          col=my.color,     # set the color palette 
          main="Sepal length of the Iris flower", # the main title 
          xlab="cm",
          ylab ="Counts" )       # x-axis label 


#############################
# 10.2 Boxplots              #      
#############################

summary(data$Sepal.Length)
boxplot(data$Sepal.Length, horizontal = TRUE)
