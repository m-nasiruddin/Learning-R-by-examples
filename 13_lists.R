# Creating a list
# --------------- (contains elements of different types like ??? numbers, strings, vectors, another list, matrix or function)
list_data <- list("Red","Green", c(21,32,11),TRUE,51.23,119.1)  # creates a list containing strings, numbers, vectors and a logical values
print(list_data)

# Naming list elements
# -------------------- (the list elements can be given names and they can be accessed using these names)
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2), list("green",12.3))  # creates a list containing a vector, a matrix and a list
names(list_data) <- c("1st-quarter","A_Matrix","a inner list")  # gives names to the elements in the list
print(list_data)  # show the list

# Accessing list elements
# ----------------------- (elements of the list can be accessed by the index of the element, for named lists it can also be accessed using the names)
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2), list("green",12.3))  # creates a list containing a vector, a matrix and a list
names(list_data) <- c("1st-quarter","A_Matrix","a inner list")  # givess names to the elements in the list
print(list_data[1])  # access the first element of the list
print(list_data[3])  # access the thrid element, as it is also a list, all its elements will be printed
print(list_data$A_Matrix)  # access the list element using the name of the element

# Manipulating list elements
# -------------------------- (list elements can be added, deleted and updated; elements can be added and deleted only at the end of a list, but we can update any element)
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2), list("green",12.3))  # creates a list containing a vector, a matrix and a list
names(list_data) <- c("1st-quarter","A_Matrix","a inner list")  # givess names to the elements in the list
list_data[4] <- "New element"  # adds element at the end of the list
print(list_data[4])
list_data[4] <- NULL  # removes the last element
print(list_data[4])  # prints the 4th Element
list_data[3] <- "updated element"  # updates the 3rd Element
print(list_data[3])

# Merging lists
# ------------- (many lists can be merged into one list by placing all the lists inside one list() function)
list1 <- list(1,2,3)  # creates two lists
list2 <- list("Sun","Mon","Tue")
merged.list <- c(list1,list2)  # merges the two lists
print(merged.list)  # prints the merged list

# Converting list to vector
# ------------------------- (a list can be converted to a vector so that the elements of the vector can be used for further manipulation)
list1 <- list(1:5)  # reates lists
print(list1)
list2 <-list(10:14)
print(list2)
v1 <- unlist(list1)  # converts the lists to vectors
print(v1)
v2 <- unlist(list2)
print(v2)
result <- v1+v2  # now add the vectors
print(result)
