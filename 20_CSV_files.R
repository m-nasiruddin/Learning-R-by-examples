# Getting and setting the working directory
# -----------------------------------------
print(getwd())  # gets and prints current working directory
setwd("D:/PROJECTS/RStudio/Learning-R-by-example")  # sets current working directory
print(getwd())  # gets and prints current working directory

# Reading a CSV file
# ------------------ (the csv file is a text file in which the values in the columns are separated by a comma)
data <- read.csv("data/input/input.csv")  # gives the output as a data frame
print(data)

# Analyzing the CSV file
# ----------------------
data <- read.csv("data/input/input.csv")
print(is.data.frame(data))
print(ncol(data))  # checks the number of columns
print(nrow(data))  # checks the number of rows

sal <- max(data$salary)  # gets the maximum salary from data frame
print(sal)

retval <- subset(data, salary == max(salary))  # gets the person detail having max salary
print(retval)

retval <- subset( data, dept == "IT")  # gets all the people working in IT department
print(retval)

info <- subset(data, salary>600 & dept=="IT")  # gets the persons in IT department whose salary is greater than 600
print(info)

retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))  # gets the people who joined on or after 2014
print(retval)

# Writing into a CSV file
# -----------------------
data <- read.csv("data/input/input.csv")  # creates a data frame
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
write.csv(retval, "data/output/output1.csv")  # writes filtered data into a new file
newdata <- read.csv("data/output/output1.csv")
print(newdata)

write.csv(retval,"data/output/output2.csv", row.names = FALSE)  # writes filtered data into a new file
newdata <- read.csv("data/output/output2.csv")
print(newdata)
