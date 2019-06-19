# Pie chart
# ---------  (a pie-chart is a representation of values as slices of a circle with different colors, the slices are labeled and the numbers corresponding to each slice is also represented in the chart)
x <- c(21,62,10,53)  # creates data for the graph
labels <- c("London","New York","Singapore","Mumbai")
png(file = "data/output/city.jpg")  # gives the chart file a name
pie(x, labels)  # plots the chart
dev.off()  # saves the file

# Pie chart title and colors
# --------------------------
x <- c(21,62,10,53)  # creates data for the graph
labels <- c("London","New York","Singapore","Mumbai")
png(file = "data/output/city_title_colours.jpg")  # gives the chart file a name
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))  # plots the chart
dev.off()  # saves the file

# Slice percentages and chart legend
# ----------------------------------
x <- c(21,62,10,53)  # creates data for the graph
labels <- c("London","New York","Singapore","Mumbai")
piepercent<- round(100*x/sum(x), 1)
png(file = "data/output/city_percentage_legends.jpg")  # gives the chart file a name
pie(x, labels = piepercent, main = "City pie chart", col = rainbow(length(x)))  # plots the chart
legend("topright", c("London","New York","Singapore","Mumbai"), cex = 0.8, fill = rainbow(length(x)))
dev.off()  # saves the file

# 3d pie chart
# ------------
install.packages("plotrix")  # install Install RMySQL package package
library(plotrix)  # gets the library
x <-  c(21,62,10,53)  # creates data for the graph
lbl <-  c("London","New York","Singapore","Mumbai")
png(file = "data/output/3d_pie_chart.jpg")  # gives the chart file a name
pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries")  # plots the chart
dev.off()  # saves the file
