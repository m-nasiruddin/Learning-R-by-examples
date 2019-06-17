# Valid strings
# -------------
a <- 'start and end with single quote'
print(a)
b <- 'start and end with double quotes'
print(b)
c <- 'double quotes " in between single quote'
print(c)
d <- "single quote ' in between double quotes"
print(d)

# Invalid strings
# ---------------
# e <- 'mixed quotes"
# print(e)
# f <- 'single quote ' inside single quote'
# g <- "double quotes " inside double quotes"
# print(g)

# String manipulation
# -------------------
a <- "Hello,"
b <- 'how'
c <- "are you?"
print(paste(a,b,c))  # concatenating strings
print(paste(a,b,c, sep = "-"))  # sep represents any separator between the arguments
print(paste(a,b,c, sep = '', collapse = ""))  # collapse is used to eliminate the space in between two strings

result <- format(23.123456789, digits = 9)  # total number of digits displays
print(result)

result <- format(c(6,13.14521), scientific = TRUE)  # displays numbers in scientific notation
print(result)

result <- format(23.47, nsmall = 5)  # the minimum number of digits to the right of the decimal point
print(result)

result <- format(6)  # format() treats everything as a string
print(result)

result <- format(13.7, width = 6)  # numbers are padded with blank in the beginning for width
print(result)

result <- format("Hello", width = 8, justify = "l")  # display of the string to left
print(result)
result <- format("Hello", width = 8, justify = "c")  # justfy string with center
print(result)

result <- nchar("Count the number of characters")  # counts the number of characters including spaces in a string
print(result)

result <- toupper("Changing To Upper")  # changing to Upper case
print(result)

result <- tolower("Changing To Lower")  # changing to lower case
print(result)

result <- substring("Extract",5,7)  # extracts characters from 5th to 7th position
print(result)
