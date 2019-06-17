# Creating a matrix
# ----------------- (elements are arranged in a two-dimensional rectangular layout and have the same atomic types)
m <- matrix(c(3:14), nrow = 4, byrow = TRUE)  # elements are arranged sequentially by row
print(m)
n <- matrix(c(3:14), nrow = 4, byrow = FALSE)  # elements are arranged sequentially by column
print(n)
rownames = c("row1","row2","row3","row4")  # define the column and row names
colnames = c("col1","col2","col3")
o <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(o)

# Accessing elements of a matrix
# ------------------------------ (can be accessed by using the column and row index of the element)
rownames = c("row1","row2","row3","row4")  # defines the column and row names
colnames = c("col1","col2","col3")
o <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(o)
print(o[1,3])  # accesses the element at 3rd column and 1st row
print(o[4,2])  # accesses the element at 2nd column and 4th row
print(o[2,])  # accesses only the 2nd row
print(o[,3])  # accesses only the 3rd column

# Matrix addition and subtraction
# ------------------- (the dimensions (number of rows and columns) should be same for the matrices involved in the operation)
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)  # create two 2x3 matrices
print(matrix1)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)
result <- matrix1+matrix2  # adds the matrices
cat("Result of addition")
print(result)
result <- matrix1-matrix2  # subtracts the matrices
cat("Result of subtraction")
print(result)

# Matrix multiplication and division
# ----------------------------------
matrix1 <- matrix(c(3,9,-1,4,2,6), nrow = 2)  # creates two 2x3 matrices
print(matrix1)
matrix2 <- matrix(c(5,2,0,9,3,4), nrow = 2)
print(matrix2)
result <- matrix1*matrix2  # multiplies the matrices
cat("Result of multiplication")
print(result)
result <- matrix1/matrix2  # divides the matrices
cat("Result of division")
print(result)
