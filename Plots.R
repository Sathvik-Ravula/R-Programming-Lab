# R language is mostly used for statistics and data analytics purposes to represent the data graphically in the software. To represent those data graphically,
# charts and graphs are used in R. 

# R – graphs
# There are hundreds of charts and graphs present in R. For example, bar plot, box plot, mosaic plot, 
# dot chart, coplot, histogram, pie chart, scatter graph, etc. 

#PIE CHART

data(mtcars)
colors <- c("red", "blue", "green", "orange", "purple", "yellow", "brown", "pink", "gray", "black")
# Calculate the percentage of each number of cylinders
cylinders <- table(mtcars$cyl)
perc <- round(100 * cylinders / sum(cylinders), 1)
# Create the pie chart
pie(cylinders, labels = paste(names(cylinders), " (", perc, "%)"), col = colors)
title(main = "Number of Cylinders in mtcars")

#BARPLOT

barplot(table(mtcars$cyl),
        xlab = "Number of Cylinders", ylab = "Count",
        main = "Barplot of Number of Cylinders")

#BOXPLOT

boxplot(mtcars$mpg ~ mtcars$cyl,
        xlab = "Number of Cylinders", ylab = "Miles Per Gallon",
        main = "Boxplot of Miles Per Gallon / Number of Cylinders")

#LINECHART

plot(mtcars$hp, mtcars$mpg,
     xlab = "Horsepower", ylab = "Miles Per Gallon",
     main = "Relationship Between Horsepower and Miles Per Gallon")

#ADDING REGRESSION LINE

abline(lm(mpg ~ hp, data = mtcars), col = "red")

#SCATTERPLOT

# Load the mtcars dataset
data(mtcars)

plot(mtcars$hp, mtcars$mpg, 
     xlab = "Horsepower", ylab = "Miles per gallon", main = "Scatter plot of mpg vs. hp")

#MEASURES OF CENTRAL TENDENCY : MEAN

x <- c(2, 3, 5, 7, 11)
mean_x <- mean(x)

print(mean_x)

#MEDIAN

print(median(x))

#MODE

# There is no built-in function in R to calculate the mode directly, 
# so we have to use a custom function to find the mode as shown above. 
# In the above code, we are first creating a frequency table of the vector using table(), 
# sorting it in descending order using sort(), and then selecting the first element of the 
# resulting vector using names() to get the mode.

x <- c(2, 3, 5, 7, 11, 5, 7, 5)
mode_x <- names(sort(-table(x)))[1]

print(mode_x)


