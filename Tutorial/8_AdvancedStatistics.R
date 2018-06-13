# clear the Global Environment
rm(list=ls())


#############################
# 9.1 Of Bins and Bars      #      
#############################

data <- iris$Sepal.Length

plot(table(data))

# Check the range
range(data)

# We want only bins of 0.5 cm
bins <- seq(1,10,by = 0.5)

# bundle the data in bins 
data.bin <- cut(data, bins)

# take a look at

plot(data.bin)

# or

barplot(table(data.bin))

# or

hist(data)


#############################
# 9.2 Data Mining by hand   #      
#############################

data <- iris

mean(data$Petal.Length)
tapply(data$Petal.Length ,data$Species, FUN = mean)

sd(data$Petal.Length)
tapply(data$Petal.Length ,data$Species, FUN = sd)


#############################
# 9.3 Anova                 #      
#############################

data <- iris
plot(data$Petal.Length ~ data$Species)
myanalysis <- aov(formula = Petal.Length ~ Species, data = data)

anova(myanalysis)

summary(myanalysis)
print(myanalysis)
plot(myanalysis)

TukeyHSD(myanalysis)
#############################
# 9.4 Exercise              #      
#############################

# Do a ANOVA with the data in 'data/plants
