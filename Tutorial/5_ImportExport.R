# clear the Global Environment
rm(list=ls())


#############################
# 8.1 Libraries             #      
#############################

# Use library() to see all your libraries
library()


# Load jsonlite
library(jsonlite)

# if not installed, install it
install.packages('jsonlite')
library(jsonlite)


#############################
# 8.2 Read Data             #      
#############################

# What is the difference between
data <- read.csv(file = "data/oranges.txt",sep = "\t" , header = TRUE)
# and
data <- read.csv(file = "data/oranges.txt",sep = "\t" , header = FALSE)

data <- read.csv(file = "data/oranges.csv",sep = ",")

data <- jsonlite::read_json("data/oranges.json", simplifyVector = TRUE)


#############################
# 8.3 Write Data            #
#############################

mydata <- iris

write.table(mydata, "data/iris.txt", sep = "\t")

write.table(mydata, "data/iris.csv", sep = ",")

jsonlite::write_json(mydata, "data/iris.json")


#############################
# 8.4 source files          #
#############################

source('filename')

# Exercise: Include the file 'myscript' that can be found in the folder 
#           'data'.
