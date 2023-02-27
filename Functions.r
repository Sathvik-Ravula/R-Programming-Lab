#Functions In R

# A function is a block of code which only runs when it is called.You can pass data, known as parameters, into a function. 
# A function can return data as a result.

# EXAMPLE :

my_mean <- function(x) {
  sum_x <- sum(x)
  n_x <- length(x)
  mean_x <- sum_x / n_x
  return(mean_x)
}

x <- c(1, 2, 3, 4, 5)
my_mean(x)

# In the example above, the my_mean() function takes a vector x as an input, 
# calculates the sum of the vector, divides the sum by the length of the vector to obtain the mean, 
# and returns the mean. We then use this function to calculate the mean of a vector x


factorial <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * factorial(n-1))
  }
}

factorial(5)
# In this example, we define a function called factorial() that takes an integer n as input and returns the factorial of n. 
# The function uses a recursive algorithm to calculate the factorial.

count_vowels <- function(s) {
  vowels <- c("a", "e", "i", "o", "u")
  n_vowels <- 0
  for (i in 1:nchar(s)) {
    if (tolower(substr(s, i, i)) %in% vowels) {
      n_vowels <- n_vowels + 1
    }
  }
  return(n_vowels)
}

s <- "Hello, world!"
count_vowels(s)

# In this example, we define a function called count_vowels() that takes a string s as input and counts the number of vowels in the string. 
# The function uses a for loop to iterate over the characters in the string and checks whether each character is a vowel.


random_normal <- function(n, mean=0, sd=1) {
  rnorm(n, mean, sd)
}

x <- random_normal(100)
hist(x)

# In the above example, we define a function called random_normal() that generates a random normal distribution with n values, 
# mean mean, and standard deviation sd. The function uses the rnorm() function to generate random numbers from a normal distribution.

add <- function(a, b) {
  a + b
}

add(2, 3)
# In this example, we define a function called add() that takes two numbers a and b as input and returns their sum. 
# The function uses the + operator to add the two numbers.

subset_df <- function(df, condition) {
  df_subset <- df[condition, ]
  return(df_subset)
}

df <- data.frame(x = c(1, 2, 3), y = c("a", "b", "c"))
subset_df(df, df$x > 1)

# In the third example, we define a function called subset_df() that takes a data frame df and a condition condition as input, 
# subsets the data frame based on the condition, and returns the subset. The function uses the [ ] operator to subset the data frame.

#Some Commonly Used Functions In R:

# mean(): Calculates the arithmetic mean of a numeric vector.

x <- c(1, 2, 3, 4, 5)
mean(x)

# sum(): Calculates the sum of a numeric vector.

x <- c(1, 2, 3, 4, 5)
sum(x)

#length(): Returns the length of a vector.

x <- c(1, 2, 3, 4, 5)
length(x)

# seq(): Generates a sequence of numbers.

seq(1, 10)

# toupper(): Converts a string to uppercase.

s <- "hello world"
toupper(s)

# tolower(): Converts a string to lowercase.

s <- "HELLO WORLD"
tolower(s)

# sort(): Sorts a vector in ascending order.

x <- c(3, 1, 4, 1, 5, 9, 2, 6)
sort(x)