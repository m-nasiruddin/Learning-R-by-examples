# Install xlsx package
# --------------------
install.packages("xlsx")

# Verify and load the "xlsx" package
# ----------------------------------
any(grepl("xlsx",installed.packages()))  # verifies the package is installed
library("xlsx")  # loads the library into R workspace

# Reading the Excel file
# ----------------------
data <- read.xlsx("data/input/input.xlsx", sheetIndex = 1)  # reads the first worksheet in the file input.xlsx
print(data)
