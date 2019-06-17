# Valid variable declarations
# ---------------------------
var_name2.  # can contain letters, numbers, dot and underscores
.var_name  # can start with a dot() but the dot(.) should not be followed by a number
var.name

# Invalid variable reclarations
# -----------------------------
# var_name%  # percentage (%) character isn't allowed
# 2var_name  # starts with a number
# .2var_name  # the starting dot (.) followed by a number makes invalid
# _var_name  # starts with underscore (_) which is invalid

# Variable assignment
# -------------------
var.1 = c(0,1,2,3)  # assignment using equal operator
var.2 <- c("learn","R")  # assignment using leftward operator
c(TRUE, 1) -> var.3  # assignment using rightward operator

# Values of the variables printing
# -------------------------------- (using print() / cat() function)
print(var.1)
cat("var.1 is", var.1)  # the cat() function combines multiple items into a continuous print output
cat("var.2 is", var.2)
cat("var.3 is", var.3)

# Data type of a variable
# -----------------------
var_x <- "Hello"
cat("This class of var_x is", class(var_x))
var_x <- 34.5
cat("Now the class of var_x is", class(var_x))
var_x <- 27L
cat("Next the class of var_x becomes", class(var_x))

# Finding variables
# ----------------- (to know all the variables currently available in the workspace)
print(ls())
print(ls(pattern = "var"))  # list the variables starting with the pattern "var"
print(ls(all.names = TRUE))  # the variables starting with dot(.) are hidden, and the they can be listed

# Deleting variables
# ------------------
rm(var.3)  # delete the variable var.3
print(var.3)
rm(list = ls())  # delete all the variables
print(ls())
