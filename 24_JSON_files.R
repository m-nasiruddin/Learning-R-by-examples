# Install rjson package
# ---------------------
install.packages("rjson")

# Read the JSON file
# ------------------
library("rjson")  # loads the package required to read JSON files
result <- fromJSON(file = "data/input/input.json")  # gives the input file name to the function
print(result)  # prints the resul

# Convert JSON to a data frame
# ----------------------------
library("rjson")  # loads the package required to read JSON files
result <- fromJSON(file = "data/input/input.json")  # gives the input file name to the function
json_data_frame <- as.data.frame(result)  # converts JSON file to a data frame
print(json_data_frame)
