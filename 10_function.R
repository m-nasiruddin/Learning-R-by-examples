# Built-in function
# ----------------- (can be directly called in the program without defining them first)
print(seq(32,44))  # create a sequence of numbers from 32 to 44
print(mean(25:82))  # find mean of numbers from 25 to 82
print(sum(41:68))  # find sum of numbers frm 41 to 68

# User-defined function
# --------------------- (they're specific to what a user wants and once created they can be used like the built-in functions)
new.function <- function(a) {  # creates a function to print squares of numbers in sequence
  for (i in 1:a) {
    b <- i^2
    print(b)
  }
}
new.function(6)  # calls the function new.function supplying 6 as an argument

# Calling a function without an argument
# --------------------------------------
new.function <- function() {  # creats a function without an argument
  for (i in 1:5) {
    print(i^2)
  }
}
new.function()  # calls the function without supplying an argument

# Calling a function with argument values
# --------------------------------------- (the arguments to a function call can be supplied in the same sequence as defined in the function or they can be supplied in a different sequence but assigned to the names of the arguments)
new.function <- function(a,b,c) {  # creates a function with arguments
  result <- a*b+c
  print(result)
}
new.function(5,3,11)  # calls the function by position of arguments
new.function(a=11,b=5,c=3)  # calls the function by names of the arguments

# Calling a function with default argument
# ---------------------------------------- (we can define the value of the arguments in the function definition and call the function without supplying any argument to get the default result)
new.function <- function(a=3,b=6) {  # creates a function with arguments
  result <- a*b
  print(result)
}
new.function()  # calls the function without giving any argument
new.function(9,5)  # calls the function with giving new values of the argument

# Lazy evaluation of function
# --------------------------- (arguments to functions are evaluated lazily, which means so they are evaluated only when needed by the function body)
new.function <- function(a,b) {  # creates a function with arguments
  print(a^2)
  print(a)
  print(b)
}
new.function(6)  # evaluates the function without supplying one of the arguments
