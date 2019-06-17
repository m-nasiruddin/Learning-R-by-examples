# Vectors
# ------- (most basic R data objects and there are six types of atomic vectors - logical, integer, double, complex, character and raw)
print("abc")  # atomic vector of type character
print(12.5)  # atomic vector of type double
print(63L)  # atomic vector of type integer
print(TRUE)  # atomic vector of type logical
print(2+3i)  # atomic vector of type complex
print(charToRaw('hello'))  # atomic vector of type raw

# Multiple elements vector
# ------------------------
v <- 5:13  # creating a sequence from 5 to 13
print(v)
v <- 6.6:12.6  # creating a sequence from 6.6 to 12.6
print(v)
v <- 3.8:11.4  # if the final element specified does not belong to the sequence then it is discarded
print(v)

print(seq(5, 9, by=0.4))  # create vector with elements from 5 to 9 incrementing by 0.4

s <- c('apple','red',5,TRUE)  # the non-character values are coerced to character type if one of the elements is a character
print(s)

# Accessing vector elements
# ------------------------- (elements of a Vector are accessed using indexing ([]) which starts with position 1, and igving a negative value in the index drops that element from result; TRUE, FALSE or 0 and 1 can also be used for indexing)
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]  # accessing vector elements using position
print(u)
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]  # accessing vector elements using logical indexing
print(v)
x <- t[c(-2,-5)]  # accessing vector elements using negative indexing
print(x)
y <- t[c(0,0,0,0,0,0,1)]  # accessing vector elements using 0/1 indexing
print(y)

# Vector manipulation
# ------------------- (two vectors of same length can be added, subtracted, multiplied or divided giving the result as a vector output)
v1 <- c(3,8,4,5,0,11)  # create two vectors
v2 <- c(4,11,0,8,1,2)
add.result <- v1+v2  # vector addition
print(add.result)
sub.result <- v1-v2  # vector substraction
print(sub.result)
multi.result <- v1*v2  # vector multiplication
print(multi.result)
divi.result <- v1/v2  # vector division
print(divi.result)

# Vector element recycling
# ------------------------ (if we apply arithmetic operations to two vectors of unequal length, then the elements of the shorter vector are recycled to complete the operations)
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11)  # v2 becomes c(4,11,4,11,4,11)
add.result <- v1+v2
print(add.result)
sub.result <- v1-v2
print(sub.result)

# Vector element sorting
# ----------------------
v <- c(3,8,4,5,0,11,-9,304)
sort.result <- sort(v)  # sort the elements of the vector
print(sort.result)
revsort.result <- sort(v, decreasing = TRUE)  # sort the elements in the reverse order
print(revsort.result)
v <- c("Red","Blue","yellow","violet")
sort.result <- sort(v)  # sorting character vectors
print(sort.result)
revsort.result <- sort(v, decreasing = TRUE)  # sorting character vectors in reverse order
print(revsort.result)
