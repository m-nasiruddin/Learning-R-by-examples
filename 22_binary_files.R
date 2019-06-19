# Writing the binary file
# -----------------------
write.table(mtcars, file = "data/output/mtcars.csv",row.names = FALSE, na = "", col.names = TRUE, sep = ",")  # reads the "mtcars" data frame as a csv file and store only the columns "cyl", "am" and "gear".
new.mtcars <- read.table("data/output/mtcars.csv",sep = ",",header = TRUE,nrows = 5)  # stores 5 records from the csv file as a new data frame
write.filename = file("data/output/binmtcars.dat", "wb")  # create a connection object to write the binary file using mode "wb"
writeBin(colnames(new.mtcars), write.filename)  # writes the column names of the data frame to the connection object
writeBin(c(new.mtcars$cyl,new.mtcars$am,new.mtcars$gear), write.filename)  # writes the records in each of the column to the file
close(write.filename)  # closes the file for writing so that it can be read by other program

# Reading the Binary File
# -----------------------
read.filename <- file("data/output/binmtcars.dat", "rb")  # creates a connection object to read the file in binary mode using "rb"
column.names <- readBin(read.filename, character(),  n = 3)  # first reads the column names, n = 3 as we have 3 columns
read.filename <- file("data/output/binmtcars.dat", "rb")  # next read the column values, n = 18 as we have 3 column names and 15 values
bindata <- readBin(read.filename, integer(),  n = 18)
print(bindata)  # prints the data
cyldata = bindata[4:8]  # reads the values from 4th byte to 8th byte which represents "cyl"
print(cyldata)
amdata = bindata[9:13]  # reads the values form 9th byte to 13th byte which represents "am"
print(amdata)
geardata = bindata[14:18]  # reads the values form 9th byte to 13th byte which represents "gear"
print(geardata)
finaldata = cbind(cyldata, amdata, geardata)  # combines all the read values to a dat frame
colnames(finaldata) = column.names
print(finaldata)
