###############################################################################
#                                                                             #
# Run current line: Ctrl + Enter / Strg + Enter                               #
# Run script: Ctrl + Alt + R / Strg + Alt + R                                 #
#                                                                             #
# "#" makes text invisible "comment"                                          #
#                                                                             #    
# For styleguide: https://google.github.io/styleguide/Rguide.xml              #                                        
#                                                                             #
#################### maximal line length = 80 chars ###########################

# clear the Global Environment
rm(list=ls())

#############################
# 1.1 Basic Data Types      #
#     and Exmaples          #      
#############################

########
# NULL #
########

# Initialize a variable x with the value NULL.

x <- 0

# Check mode(x)

mode(x)

############
# logicals #
############

#Initialize A and B with the values TRUE and FALSE.

A <- TRUE
B <- FALSE

# Check mode(A)

mode(A)

# Question: Which effect have the operatons A & B and A | B ?

A & B # and
A | B # or

# Note: They return logicals 

############
# numerics #
############

# Initialize x with the value 7 and check mode(x)

x <- 7

# Initialize y with the value x

y <- x

# Change the value if y to 3.1. 

y <- 3.1

# Did you notice something?

# Note: y <- x copies the value of x

############
# integers #
############

# Check is.integer(x)

is.integer(x)

# Now convert x and y into integers using as.integer(x)

x <- as.integer(x)
y <- as.integer(y)

###################
# complex numbers #
###################

# Initialize z with the value 1 + 1i

z <- 1 + 1i

# Check mode(z)

mode(z)

##############
# characters #
##############

# Initialize word1 and word2 with 'one' and 'two'

word1 <- 'one'
word2 <- 'two'

# Check mode(word1)

word3 = paste(word1, word2)

sub('wo', 'hree', w)

# Question: What is the value of word3 ?


#############################
# 1.2 Basic Operations      #      
#############################

# numeric calculation

x <- 3
y <- 4

# Try to do basic numeric calculations.

x + y
# etc

# Try to compute powers.
x**2

# Try to do logical comparisons.

x <- 3
y <- 'Hans'

x == y

#############################
# 1.3 If statements         #      
#############################

A <- TRUE
B <- FALSE

if (A) {
  print('Hello world!')
}

if (B) {
  print('yes')
} else {        # syntax !
  print('no')
}


#############################
# 1.4 For loop              #      
#############################


for (k in (1:10) ) {
  print(paste('step', k))  
}


#############################
# 1.5 Exercise              #  
#############################

# Problem:

# Implement the factorial of n
# i.e. n * (n-1) * ... * 2 * 1
# using if/for statements
# note: n has to be integer

n <- 7.25


if (!is.integer(n)) {
  print('n has to be integer')
} else {
  
  factorial <- 1
  for (k in (1:n)) {
    factorial = factorial * k
  }
  print(factorial)
}


