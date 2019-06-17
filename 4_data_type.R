# Logical
# -------
v <- TRUE
print(class(v))

# Numeric
# -------
v <- 23.5
print(class(v))

# Integer
# -------
v <- 2L
print(class(v))

# Complex
# -------
v <- 2+5i
print(class(v))

# Character
# ---------
v <- "TRUE"
print(class(v))

# Raw
# ---
v <- charToRaw("Hello")
print(class(v))

# Vectors
# ------- (to create vector with more than one element use c() function which means to combine the elements into a vector)
apple <- c('red','green',"yellow")  # creates a vector
print(apple)
print(class(apple))  # gets the class of the vector

# Lists
# ----- (contain many different types of elements inside it like vectors, functions and even another list inside it)
list1 <- list(c(2,5,3),21.3,sin)  # creates a list
print(list1)  # prints the list

# Matrices
# -------- (two-dimensional rectangular dataset, it can be created using a vector input to the matrix function)
m = matrix(c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)  # creates a matrix
print(m)

# Arrays
# ------ (can have any number of dimensions, it takes a dim attribute which creates the required number of dimension)
a <- array(c('green','yellow'), dim = c(3,3,2))  # creates an array
print(a)

# Factors
# ------- (creates using a vector, it stores the vector along with the distinct values of the elements in the vector as labels)
apple_colors <- c('green','green','yellow','red','red','red','green')  # creates a vector
factor_apple <- factor(apple_colors)  # creates a factor object
print(factor_apple)  # prints the factor
print(nlevels(factor_apple))  # applying the nlevels() we can know the number of distinct values

# Data frames
# ----------- (tabular data objects, unlike a matrix each column can contain different modes of data)
bmi <- data.frame(
  gender = c("Male","Male","Female"),
  height = c(152,171.5,165),
  weight = c(81,93,78),
  age = c(42,38,26)
)
print(bmi)
