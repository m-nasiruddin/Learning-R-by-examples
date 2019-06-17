# Data frame
# ---------- (it's a table or a two-dimensional array-like structure in which each column contains values of one variable and each row contains one set of values from each column)
emp.data <- data.frame(emp_id = c (1:5), emp_name = c("Rick","Dan","Michelle","Ryan","Gary"), salary = c(623.3,515.2,611.0,729.0,843.25), start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")), stringsAsFactors = FALSE)  # creates the data frame
print(emp.data)  # prints the data frame

# Get the structure of the data frame
# -----------------------------------
emp.data <- data.frame(emp_id = c (1:5), emp_name = c("Rick","Dan","Michelle","Ryan","Gary"), salary = c(623.3,515.2,611.0,729.0,843.25), start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")), stringsAsFactors = FALSE)  # creates the data frame
str(emp.data)  # gets the structure of the data frame

# Summary of data in data frame
# -----------------------------
emp.data <- data.frame(emp_id = c (1:5), emp_name = c("Rick","Dan","Michelle","Ryan","Gary"), salary = c(623.3,515.2,611.0,729.0,843.25), start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")), stringsAsFactors = FALSE)  # creates the data frame
print(summary(emp.data))  # prints the summary

# Extrat data from data frame
# ---------------------------
emp.data <- data.frame(emp_id = c (1:5), emp_name = c("Rick","Dan","Michelle","Ryan","Gary"), salary = c(623.3,515.2,611.0,729.0,843.25), start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")), stringsAsFactors = FALSE)  # creates the data frame
result <- data.frame(emp.data$emp_name,emp.data$salary)  # extracts Specific columns
print(result)
result <- emp.data[1:2,]  # extracts first two rows
print(result)
result <- emp.data[c(3,5), c(2,4)]  # extracts 3rd and 5th row with 2nd and 4th column
print(result)

# Expand data frame
# ----------------- (it can be expanded by adding columns and rows)
emp.data <- data.frame(emp_id = c (1:5), emp_name = c("Rick","Dan","Michelle","Ryan","Gary"), salary = c(623.3,515.2,611.0,729.0,843.25), start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")), stringsAsFactors = FALSE)  # creates the data frame
emp.data$dept <- c("IT","Operations","IT","HR","Finance")  # adds the "dept" coulmn
v <- emp.data
print(v)
emp.newdata <- 	data.frame(emp_id = c (6:8), emp_name = c("Rasmi","Pranab","Tusar"), salary = c(578.0,722.5,632.8), start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")), dept = c("IT","Operations","Fianance"), stringsAsFactors = FALSE)  # creates the second data frame
emp.finaldata <- rbind(emp.data,emp.newdata)  # binds the two data frames
print(emp.finaldata)
