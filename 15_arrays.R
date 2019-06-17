# Arrays
# ------ (stores data in more than two dimensions, or matrices in multiple dimensions)
vector1 <- c(5,9,3)  # creates two vectors of different lengths
vector2 <- c(10,11,12,13,14,15)
result <- array(c(vector1,vector2), dim = c(3,3,2))  # takes these vectors as input to the array
print(result)

# Naming columns and rows
# -----------------------
vector1 <- c(5,9,3)  # creates two vectors of different lengths
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
result <- array(c(vector1,vector2), dim = c(3,3,2), dimnames = list(row.names,column.names,matrix.names))  # takes these vectors as input to the array
print(result)

# Accessing array elements
# ------------------------
vector1 <- c(5,9,3)  # creates two vectors of different lengths
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
result <- array(c(vector1,vector2), dim = c(3,3,2), dimnames = list(row.names,column.names,matrix.names))  # takes these vectors as input to the array
print(result[3,,2])  # prints the third row of the second matrix of the array
print(result[1,3,1])  # prints the element in the 1st row and 3rd column of the 1st matrix
print(result[,,2])  # prints the 2nd Matrix

# Manipulating array elements
# ---------------------------
vector1 <- c(5,9,3)  # creates two vectors of different lengths
vector2 <- c(10,11,12,13,14,15)
array1 <- array(c(vector1,vector2),dim = c(3,3,2))  # takes these vectors as input to the array
vector3 <- c(9,1,0)  # creates two vectors of different lengths
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector1,vector2),dim = c(3,3,2))
matrix1 <- array1[,,2]  # creates matrices from these arrays
matrix2 <- array2[,,2]
result <- matrix1+matrix2  # adds the matrices
print(result)


# Calculations across array elements
# ----------------------------------
vector1 <- c(5,9,3)  # creates two vectors of different lengths
vector2 <- c(10,11,12,13,14,15)
new.array <- array(c(vector1,vector2), dim = c(3,3,2))  # takes these vectors as input to the array
print(new.array)
result <- apply(new.array, c(1), sum)  # uses apply to calculate the sum of the rows across all the matrices
print(result)
