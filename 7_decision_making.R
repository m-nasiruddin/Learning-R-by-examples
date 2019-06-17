# if statement
# ------------ (consists of a Boolean expression followed by one or more statements)
x <- 30L
if(is.integer(x)) {
  print("X is an Integer")
}

# if ... else statement
# --------------------- (an if statement can be followed by an optional else statement, which executes when the Boolean expression is false)
x <- c("what","is","truth")
if("Truth" %in% x) {
  print("Truth is found")
} else {
  print("Truth is not found")
}

# if ... else if ... else statement
# --------------------------------- (an if statement can be followed by an optional else if ... else statement, which is very useful to test various conditions using single if ... else if statement)
x <- c("what","is","truth")
if("Truth"%in%x) {
  print("Truth is found the first time")
} else if ("truth"%in%x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}

# switch statement
# ---------------- (allows a variable to be tested for equality against a list of values; each value is called a case, and the variable being switched on is checked for each case)
x <- switch(3, "first","second","third","fourth")
print(x)
