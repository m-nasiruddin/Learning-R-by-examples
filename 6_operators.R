# Arithmetic operators
# -------------------- (the operators act on each element of the vector)
v <- c(2,5.5,6)
t <- c(8,3,4)
print(v+t)  # adds two vectors
print(v-t)  # subtracts second vector from the first
print(v*t)  # multiplies both vectors
print(v/t)  # divides the first vector with the second
print(v%%t)  # gives the reminder of the first vector with the second
print(v%/%t)  # the result of division of first vector with second (quotient)
print(v^t)  # the first vector raised to the exponent of second vector

# Relational operators
# --------------------
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)  # checks if each element of the first vector is greater than the corresponding element of the second vector
print(v<t)  # checks if each element of the first vector is less than the corresponding element of the second vector
print(v==t)  # checks if each element of the first vector is equal to the corresponding element of the second vector
print(v<=t)  # checks if each element of the first vector is less than or equal to the corresponding element of the second vector
print(v>=t)  # checks if each element of the first vector is greater than or equal to the corresponding element of the second vector
print(v!=t)  # checks if each element of the first vector is unequal to the corresponding element of the second vector

# Logical operators
# ----------------- (applicable only to vectors of type logical, numeric or complex; the result of comparison is a Boolean value; all numbers greater than 1 are considered as logical value TRUE)
v <- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,2+3i)
print(v&t)  # element-wise logical AND operator (combines each element of the first vector with the corresponding element of the second vector and gives a output TRUE if both the elements are TRUE)
print(v|t)  # element-wise logical OR operator (combines each element of the first vector with the corresponding element of the second vector and gives a output TRUE if one the elements is TRUE)
print(!v)  # logical NOT operator (takes each element of the vector and gives the opposite logical value)
print(v&&t)  # logical AND operator (akes first element of both the vectors and gives the TRUE only if both are TRUE)
print(v||t)  # logical OR operator (takes first element of both the vectors and gives the TRUE only if both are TRUE)

# Assignment operators
# --------------------
v1 <- c(3,1,TRUE,2+3i)  # left assignment
v2 <<- c(3,1,TRUE,2+3i)
v3 = c(3,1,TRUE,2+3i)
print(v1)
print(v2)
print(v3)
c(3,1,TRUE,2+3i) -> v1  # right assignment
c(3,1,TRUE,2+3i) ->> v2
print(v1)
print(v2)

# Miscellaneous operators
# ----------------------- (used for specific purpose and not general mathematical or logical compulation)
v <- 2:8  # colon operator (creates the series of numbers in sequence for a vector)
print(v)
v1 <- 8
v2 <- 12
t <- 1:10
print(v1%in%t)  # identifies if an element belongs to a vector
print(v2%in%t)
m = matrix( c(2,6,5,1,10,4), nrow=2, ncol=3, byrow = TRUE)
t = m%*%t(m)  # multiplies a matrix with its transpose
print(t)
