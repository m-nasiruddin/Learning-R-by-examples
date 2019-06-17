# Joining columns and rows in a data frame
# ----------------------------------------
city <- c("Tampa","Seattle","Hartford","Denver")  # creates vector objects
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)
addresses <- cbind(city,state,zipcode)  # combines above three vectors into one data frame
cat("# # # # The First data frame\n")  # prints a header
print(addresses)  # prints the data frame
new.address <- data.frame(city = c("Lowry","Charlotte"), state = c("CO","FL"), zipcode = c("80230","33949"), stringsAsFactors = FALSE)
cat("# # # The Second data frame\n")  # prints a header
print(new.address)  # prints the data frame
all.addresses <- rbind(addresses,new.address)  # combines rows form both the data frames
cat("# # # The combined data frame\n")  # prints a header
print(all.addresses)  # prints the result

# Merging data frames
# ------------------- (the data frames must have same column names on which the merging happens)
library(MASS)  # the data sets about Diabetes in Pima Indian Women available in the library names "MASS"
merged.Pima <- merge(x = Pima.te, y = Pima.tr, by.x = c("bp","bmi"), by.y = c("bp","bmi"))  # merges the two data sets based on the values of blood pressure("bp") and body mass index("bmi")
print(merged.Pima)
nrow(merged.Pima)

# Melting and casting
# ------------------- (changing the shape of the data in multiple steps to get a desired shape)
library(MASS)
print(ships)

# Melt the data
# -------------
molten.ships <- melt(ships, id = c("type","year"))  # melt the data to organize it, converting all columns other than type and year into multiple rows
print(molten.ships)

# Cast the molten data
# --------------------
recasted.ship <- cast(molten.ships, type+year~variable,sum)  # casts the molten data into a new form where the aggregate of each type of ship for each year is created
print(recasted.ship)

