# Factors
# ------- (data objects which're used to categorize the data and store it as levels; useful in the columns which have a limited number of unique values and in data analysis for statistical modeling)
data <- c("East","West","East","North","North","East","West","West","West","East","North")  # creates a vector as input
print(data)
print(is.factor(data))
factor_data <- factor(data)  # applies the factor function
print(factor_data)
print(is.factor(factor_data))

# Factors in data frame
# --------------------- (on creating any data frame with a column of text data, R treat the text column as categorical data and creates factors on it)
height <- c(132,151,162,139,166,147,122)  # creates the vectors for data frame
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")
input_data <- data.frame(height,weight,gender)  # creates the data frame
print(input_data)
print(is.factor(input_data$gender))  # tests if the gender column is a factor
print(input_data$gender)  # prints the gender column so see the levels

# Changing the order of levels
# ---------------------------- (the order of the levels in a factor can be changed by applying the factor function again with new order of the levels)
data <- c("East","West","East","North","North","East","West","West","West","East","North")
factor_data <- factor(data)  # creates the factors
print(factor_data)
new_order_data <- factor(factor_data,levels = c("East","West","North"))  # applies the factor function with required order of the level
print(new_order_data)

# Generating factor levels
# ------------------------ (takes two integers as input which indicates how many levels and how many times each level)
v <- gl(3,4, labels = c("Tampa","Seattle","Boston"))
print(v)
