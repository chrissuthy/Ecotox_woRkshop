
### Logical Indexing ###

# Logical indexing is a way to subset your data by using logical expressions
# R has a lot of ways to evaluate logical expressions. One of the most obvious
# is '>' (greater than) or '<' (less than). These are extended to ">=' (greater
# than or equal to) or '<=' (less than or equal to).

# When logical expressions are evaluated, R returms TRUE or FALSE for every
# component that is evaluated.

#F or instance, we can create a vector of integers:

x <- c(1:20)

# Now we can evaluate every item in this vector for whether or not it is
# greater than 8

x >= 8

# This returns a logical vector of TRUE (for 1 through 7) and FALSE (for 8
# through 20).

# This vector can then be used to



## GGPlot




[Work on this - insert sections about histograms, boxplots, and scatterplots]


f <- function() {
  x <- 1
  y <- 2
  c(x, y)
}
f()
rm(f)

x <- 2
g <- function() {
  y <- 1
  c(x, y)
}
g()
rm(x, g)

x <- 1
h <- function() {
  y <- 2
  i <- function() {
    z <- 3
    c(x, y, z)
  }
  i()
}
h()
rm(x, h)

j <- function(x) {
  y <- 2
  function() {
    c(x, y)
  }
}
k <- j(1)
k()
rm(j, k)

l <- function(x) x + 1
m <- function() {
  l <- function(x) x * 2
  l(10)
}
m()

scramble <- function(x) x[sample(nrow(x)), ]

subscramble <- function(x, condition) {
  scramble(subset(x, condition))
}

subscramble(mtcars, cyl == 4)

cyl <- 4
subscramble(mtcars, cyl == 4)

cyl <- sample(10, 100, rep = T)
subscramble(mtcars, cyl == 4)
