###############################################################################
#                                                                             #
# R is made for 'functional programming'.                                     #
# That means                                                                  #
# - the objects interest, e.g. data is understood as 'object' of a            #
#   certain class,                                                            #
# - the actions and analysis are encapsulated within 'functions' and          #
#   'methods'.                                                                #
#                                                                             #  
###############################################################################

# clear the Global Environment
rm(list=ls())

#############################
# 3.1 Functions             #
#############################

# Functions are predefined procedures.

# We define a function with a name 'TestFunction'
# that gets one 'argument' called 'word' within the 
# definition.
TestFunction <- function(word) {
  print(word)
  return(NULL)
}

# A 'function call' activates a function.
output <- TestFunction(word = 'Hello World!')


#############################
# 3.2 Exercise              #
#############################

data <- c(1,2,3,4,5,6)

# Problem: Write a function MyAnalysis that accepts a numerics vector and returns the mean 
#          and standard deviation.


# Possible solution:

MyMean <- function(vec) {
    temp.mean <- 0 
    for (val in vec) {
      temp.mean <- temp.mean + val / length(vec)
    }
    return(temp.mean)
}
MyStd <- function(vec) {
    temp.mean <- MyMean(vec)
    temp.std <- 0
    for (val in vec) {
      temp.std <- temp.std + (val - temp.mean)**2 / (length(vec) - 1)
    }
    temp.std <- temp.std**(1/2)

    return(temp.std)
    }

MyAnalysis <- function(vec) {
  result <- c('Mean' = MyMean(vec), 'Std' = MyStd(vec))
  return(result)
}

MyAnalysis(data)


#############################
# 3.3 apply, sapply, lapply #
#############################

# Take the data 

particiant.name <- c('P1', 'P2', 'P3', 'P4')
gender <- c('m','f','f','m')
val1 <- rnorm(n = 4, mean = 1, sd = 0.2)
val2 <- rnorm(n = 4, mean = 10, sd = 5)

# and write it into a matrix and a data.frame.

mat <- matrix(data = c(val1,val2), ncol = 2, byrow = FALSE)
colnames(mat) <- c('val1', 'val2')
df <- data.frame( row.names = particiant.name, gender, val1, val2)

# The functions apply() and sapply() simplify calculations that 
# are reapeated over matrices and data.frames.

# for matrices (and arrays) use apply
res1 <- apply(X = mat, MARGIN = 2 ,FUN = mean)

# for data.frames use sapply and lapply
res2 <- sapply(df, mean)

res3 <- lapply(df,mean)

# Questions: What is the difference between sapply and lapply ?


#############################
# 3.4 Exercise              #
#############################

data <- matrix( rnorm(n = 30000, mean = 1, sd = 0.2) ,
                ncol = 3)

# Take a look at data.

# Problem: Choose the maximum of x,y and z in each row.
#          Solve this 1) without apply 2) using apply and check 
#          if 1) and 2) really provide the same results.
#          Measure the computation time using system.time().
#          You can use the build-in functions max() and nrow() as 
#          well as all().

# 1)
MyFunction <- function(mat) {
  maxima <- numeric(0)
  for (k in 1:nrow(mat)) {
    maxima <- c( maxima, max(mat[k,]) )
  }
  return(maxima)
}

system.time(
  res1 <- MyFunction(data)
)

# 2)
system.time(
  res2 <- apply( X =  data, MARGIN = 1 , FUN = max)
)

# Check if 1) and 2) provide the same results.
all( res1 == res2 )
