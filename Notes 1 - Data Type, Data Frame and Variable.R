#DATA TYPES
# VECTORS
# 1.(LOGICAL)

v <- TRUE
print(class(v))

v <- FALSE
print(class(v))

# 2. (NUMERIC)

v <- 556
print(class(v))
v <- 6.99
print(class(v))

# 3. (INTEGER)

V <- 15
print(class(v))

# 4. (CHARACTER)
v <- "Puteri"
print(class(v))

# 5. (RAW)

v <- charToRaw("hello")
print(class(v))

#Create Vector with more than one element

apple <- c('red','green','yellow',"purple")
print(apple)

#class/data type of apple
print(class(apple))

# DATA TYPES 
# LISTS - R object which can contain many different types of elements such as vectors, functions and even another list inside it.
# create a list
list1 <- list(c(1,2,3,4),123,'puteri')
print(list1)

list2 <- list(c('put','Erik'))
print(list2)

# DATA TYPES
# MATRICES - 2D Rectangular data set. Can be created using a vector input to matrix function
# create a matrix 
M = matrix(c('a','a','b','c','b','a'), nrow=2,ncol=3,byrow = TRUE) #will enter the data vector row by row
print(M)

N = matrix(c('a','a','b','c','b','a'), nrow=2,ncol=3,byrow = FALSE) #will enter the data vector column by column
print(N)

# DATA TYPES
# ARRAYS
# Can be any number of dimensions 3x3,3x4
# create array 3x3
a <- array(c('green','yellow'),dim=c(3,3,2)) #3x3 but two elements
print(a)

a <- array(c('green','yellow','red',11),dim=c(3,3,2)) #3x3 but two elements
print(a)

# DATA TYPES
# FACTORS - created using factor() function
# R objects that created using a vector
# is a data structure used for storing categorical data. Particularlu useful for variables that represent categories with a fixed set of possible values.
# nlevels function gives the count of levels. level are the unique values that factor can take (stored as character string but internally treated as integer)
#useful for graphical to display categorical variables clearly

#create a vector
apple_colors <- c('green', 'green','yellow','red','red','red','green')

#create a factor object
factor_apple <- factor(apple_colors)

# print factor
print(factor_apple)
print(nlevels(factor_apple))
as.integer(factor_apple)


# DATA FRAMES
#Tabular data objects. Can contain different modes of data where first column can be numeric while second column can be character and third can be logical.
# create data frame
BMI <- data.frame( gender = c('Male','Male','Female'), height = c(152,171.5,165), weight = c(81,93,78), Age = c(42,38,26))
print(BMI)

# VARIABLE
# Can consists of letters, numbers, dot or underline character
# Cannot start with number or dot followed by number or underscore

#VARIABLE ASSIGNMENT
# Variable can be assigned using =,<-,->
var.1 = c(0,1,2,3)
var.2 <- c('learn','R')
c(TRUE,1) -> var.3
#The vector c(TRUE,1) has a mix of logical and numeric class. So logical class is coerced to numeric class making TRUE as 1

print(var.1)
cat('var.1 is ', var.1, '\n')
cat('var.2 is ', var.2, '\n')
cat('var.3 is ', var.3, '\n')
print(var.3)

#DATA TYPE OF A VARIABLE
var_x <- "Hello"
cat("The class of var_x is ",class(var_x),"\n")
var_x <- 34.5
cat(" Now the class of var_x is ",class(var_x),"\n")
var_x <- 27L
cat(" Next the class of var_x becomes ",class(var_x),"\n")

#FINDING VARIABLES
print(ls())
# List the variables starting with the pattern "var".
print(ls(pattern="var"))

#The variables starting with dot(.) are hidden, they can be listed using "all.names=TRUE" argument to ls() function.
print(ls(all.name=TRUE))

#DELETING VARIABLE
rm(var.3) # delete a variable
print(var.3)

rm(list=ls()) #delete all variable
print(ls())
