# clear the Global Environment
rm(list=ls())

# check out data() for build-in data

#############################
# 7.0 Get a feel            # 
#     for your data         #      
#############################

# Take the build-in data 'iris'
data <- iris
# to get more information use ?iris
# and https://de.wikipedia.org/wiki/Schwertlilien

# Data can be quantitiative or qualitative.
# Check class(data$Species) and class(data$Sepal.Length)

class(data$Species)
class(data$Sepal.Length)

# Note: In R, categorical data is called 'factor'

# Try to print and plot your data.
print(head(data))
print(tail(data))

dev.new()
plot(data)

# Compare this data to
dev.new()
plot(randu)
dev.new()
x <- rnorm(n=500, mean = 0, sd = 0.5)
y <- rnorm(n=500, mean = 10, sd = 5)
plot(data.frame('x' = x, 'y' = y,'z' = x + y ))

# Use summary to get some first numbers
summary(data)

#############################
# 7.1 categorical data      #      
#############################

# Obviously, computing the mean of factors does not make sense.
# Get the frequency of factors using table()

freq <- table(data$Species)
freq.PL <- table(data$Petal.Length)

# and plot it using plot() or barplot() or pie().

plot(freq)
barplot(freq)
pie(freq)

plot(freq.PL)
barplot(freq.PL)
pie(freq.PL)

#############################
# 7.2 numerical data        #      
#############################

# Use the build-in functions mean(), var() and sd() on the Sepal.Length
c('mean' = mean(data$Sepal.Length),'var' = var(data$Sepal.Length),
  'sd' = sd(x = data$Sepal.Length) )

# Try

mean( c(1,2,3,4,5,6) )

mean( c(1,2,3,4,NA,6) )
mean( c(1,2,3,4,NA,6), na.rm = TRUE )

mean( c(1,2,3,4,NaN,6) )
mean( c(1,2,3,4,NaN,6),na.rm = TRUE )

#############################
# 7.3 apply                 #      
#############################

# Try the simple apply sapply
sapply(X = data,FUN = mean)

# compare it to list apply lappy
lapply(X = data,FUN = mean)

# and tapply
tapply(data$Sepal.Length ,data$Species, FUN = mean)

#############################
# 7.4 Cov and Cor           #      
#############################

# Look again at
plot(data)

cov(data$Petal.Length,data$Petal.Width)

cor(data$Petal.Length,data$Petal.Width)


#############################
# 7.5 Linear Regression     #      
#############################

# Do the linear regression using lm()
# Note: A ~ B means A against B, i.e. A on the y-axis and B on the x-axis
result <- lm(formula = Petal.Length ~ Petal.Width, data = data)

plot(data$Petal.Length ~ data$Petal.Width)
abline(result$coefficients[1],result$coefficients[2])

# see also
summary(result)

# in doubt
?lm
help(lm)
