###### IntRo Workshop ####### June 14, 2017 ### UMass Amherst ###
###### Presented by Blake Massey, Joe Drake, & Dr. Chris
###### Sutherland ###


#### Welcome to the R World! ######

######## Lesson 1: Intro ###########


getwd()  # (This tells you where your working directory is...)

setwd("C:\\Users\\Joseph Drake\\Dropbox\\Spring2017\\R_Ecotox")

setwd(choose.dir()) # shortcut method with a popup menu

getwd()  # confirm you successfully changed your working directory


# Let's load a package called 'swirl'

install.packages("swirl")  # this installs package into your computer
library(swirl)  # this loads it into your workspace, so you can use it

# Below is a function in the package swirl.  Try typing it
# in, pressing enter...  and I will see you on the other side

swirl()  # enter your name, follow directions, and select R Programming,
# Lesson 1: Basic Building blocks

# Type 'bye()' into the console if you need to leave swirl
# early or are done.

# That is swirl, a great way to reinforce what we learn
# today!  We suggest going through each of the lessons when
# you get home!

# Now to take the training wheels off!

# Let's start learning more about R

######## Lesson 2: Operators, Functions, Classes, and Vectors
######## ###########

### Basic Operator Examples

5 + 7  # R can be a simple calculator...

x <- 5  # But like we learned in the swirl lesson, it can store values to do more with later.

x - 7  # We can use these stored items for later calculations...

x^2  # Such as exponentiation.

### Basic Function Examples

# Sometimes we need to combine a series of numbers to do what
# we want

y <- c(5, x, x^2)  # c() this is the 'concatenate' function that combines values into a list

print(y)  # and this function prints the values of an object.

class(y)  # tells us the clas of the stored object

### Data classes

# integer = whole numbers double AKA Numeric= 'real' numbers
# logical = TRUE/FALSE character = string of characters AKA
# words complex = combination of different data classes

### Atomic Vectors

# Atomic vectors are a sequence of elements of the same data
# type assign each of the variables to the value y and check
# to make sure it's the class we claim it is

# integer
c(1, 2, 5, 8, 192)

# numeric
c(1.4, 3.15, 17.082)

# logical
c(TRUE, FALSE, FALSE, TRUE, TRUE)

# character
c("Amherst", "Site 27", "Ephemeroptera")

######## Lesson 3: Objects ###########

### Creating Objects Part 1: Vectors ###

x <- c(2, 4, 6)  # c() combines these values to create a vector of integers
print(x)  # print() prints the values stored in the object called
x <- 2:6
x  # by calling the name of stored object, we can print the value in the console too.
x <- seq(2, 3, by = 0.5)  # seq() creates a sequence of numbers length the distance
# between arguments 1 and 2, the 'by=' argument designates
# the interval size.
x
x <- rep(1:2, times = 3)  # rep() creates a repitition of numbers, the length of
# argument 1, 'times=' argument tells us how many times it
# repeats.
x
x <- rep(1:2, each = 3)  # this rep() creates an object of each integer in the
# interval designated by the 'each=' argument.
x

# Let's practice with swirl() again; remember to type:

swirl()  # to get it started up.  This time we will select R Programming
# Lesson 3: Sequence of Numbers

# Type 'bye()' into the console if you need to leave swirl
# early or when you are finished


### Creating objects Part 2: Matrices, Dataframes, and Lists
### ###

mt <- matrix(1:9, nrow = 3)  # matrices are 'tables' of numbers of a single type

df <- data.frame(x = 1:3, y = c("a", "b", "c"))
# data frames can be tables of multiple data types and are
# very commonly used.

lt <- list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))  # lists can store multiple types

class(lt)  # check to make sure it is a list

# All objects have metadata about them, and class() is one of
# the functions that can help us to get data about our data
# others include:

names(lt)  # we get a null because it has no names

dim(df)  # gives us the dimesion of the object

# factor() gives us the categorical variables

# levels() gives us the set of allowed values

### Subsetting and Indexing Data ###

# Sometimes we will only want to use a subset of our data
# objects for any given project or calculation.  We will need
# to start with vectors.

# Lets pull up

swirl()  # one more time and load R Programming, Lesson 6: Subsetting Vectors.

# Type 'bye()' into the console if you need to leave swirl
# early or when you are finished



### Logical Indexing ###


### Getting Help in R ###


############# BREAK TIME ########### GO GET SOME COFFEE ################

######## Lesson 4: Imports & Exploration ###########

### More Functions: Importing Data ###

# Normally, we don't want to have to create our data by
# typing it into R.  We probably already have a data file
# that we want to bring into R.

# Normally, we would read in a *.csv or *.txt file with a
# function called read.csv() or read.txt() respectively.  We
# will come back to these later (especially if you brought
# your own data set with you), but first we will bring in
# some data from an online repository.

install.packages("RCurl")  # This install the necessary package to set a destination url
library(RCurl)  # This loads the package
loc <- getURL("https://raw.githubusercontent.com/chrissuthy/Ecotox_woRkshop/master/ecotox_survival.csv")
# 'loc' is now an object we can use to load a file with
data <- read.csv(text = loc)
head(data)  # examine the first 6 lines of data
tail(data)  # examine the last 6 lines of data
str(data)  # str() is a useful line of code that tells you about the data object
dim(data)
summary(data)  # summary() gives us some summary statistics for the data
is.na(data)  # tells you if each entry in the data frame is a NA value or not
sum(is.na(data))  # This little line of code gives us the sum of TRUE values.
# This would give us a quick insight into a large data set in
# the number of missing values without having to go through
# each entry one-by-one.  Oh, yeah...  you can call functions
# inside of functions.

# Read in the data at loc2 below and store it as data2 (hint
# we loc2 ) below and explore it using some of the commands
# presented
loc2 <- getURL("https://raw.githubusercontent.com/chrissuthy/Ecotox_woRkshop/master/df.csv")
#
data2 <- read.csv(text = loc2)  # incase you needed it; don't forget to explore it a bit
# Many R packages like data to be in a long format, where
# every individual data point has its own row.  There are a
# couple functions that like a wide data format Once you have
# finished todays course, I suggest visiting
# https://stanford.edu/~ejdemyr/r-tutorials/wide-and-long/
# for a wonderful introduction to the differences between
# wide and long data. Bonus: it's also an R exercise that
# shows a tool (read package and function) to convert between
# the 2 data formats. Cool, huh?!?

### Exercise: Importing your data ###

# Try to import your data set; remember the ?read.csv trick
# to get help if you need help figuring out how to use the
# function.  It will be a little different than what you have
# seen so far. Once you have it in R, take a break!




######## Lesson 5: Manipulation ###########

### Data manipulation

# Alright, we have that data set in and we have taken a
# preliminary look at it.  But it seems that we have a column
# missing!  Let's try and add a column, but first we need to
# make the data!  We need it to be the same length as our
# 'data' frame.

nrow(data)  # tells us the # of rows in the data frame
ncol(data)  # and this tells us the # number of columns

# If you remember from earlier we can create a vector of
# replicated numbers With the rep() command.  Try to make a
# vector of length 48, of 1's and 2's named 'block' [should
# look like '1,2,1,2,1,2,.....].  Don't cheat, work it out
# yourself...
block <- rep(1:2, times = 24)  # confirm it's what you want with different exploration techniques
# Alright, now that we have it lets try and put it on the
# data frame 'data'.

cbind(data, block)

# let's make sure that we have what we want

ncol(data)  # but this shows a data frame that is only 6 columns long still.

# Can you figure out why?  We forgot to save the new object
# to an object.  we can change the data object in R without
# changing the original file.  We can also assign the data
# object to the same name it already has

data <- cbind(data, block)
ncol(data)

# Now we have the right number of columns that we want!
# Let's move on to visualizing some of this data.

######## Lesson 6: Visualization ###########

### Visual Data Exploration - Plotting ###

# We are going to teach two different ways to code One is in
# base R plotting and the other is ggplot2 Both have
# strengths and weaknesses

# First let's look at base R plotting We already have a data
# set, but let's explore making some more!

# We may need to simulate data to compare our data with R has
# a handy collection of distributions we can draw from

# Let's make a normal data set of 100 values with mean=0,
# sd=1
rnorm(n = 100, mean = 0, sd = 1)
# Let's store that to a variable named xnorm
xnorm <- rnorm(n = 100, mean = 0, sd = 1)
# Let's see how our distrubtion looks using the hist()
# function
hist(xnorm)
# Great, that looks just about right.  rnorm is one of a
# family of normal distribution commands type
`?`(rnorm  # to learn more about it and the rest of the normal distribution commands
)
# R has a batch of preloaded distributions you can use
# including the Poisson So we all end up seeing the same
# outcomes from our random distributions We can set a seed to
# end up with a replicable outcome!
set.seed(2)

# Let's try to creae a variable named xpois with n=100 and
# lambda=2
ypois <- rpois(n = 100, lambda = 2)
# let's visualize it with a histogram
hist(ypois)
# Base R also has an option to create boxplots
boxplot(ypois)
# That looks a little messy, let's turn it on it side
boxplot(ypois, horizontal = TRUE)
# plot() A more generic plotting command is plot() This
# stands for scatterplot and is a very useful visualization
# tool Let's plot something we are familiar with first to see
# what happens
plot(x = xnorm, y = xnorm)
# Well that's not very useful, but as you can see, when
# plotted against itself we get a straight line. Because
# that's what should happen.  Let's use some data that make
# resemble environmental variables Remember that we imported
# a dataset we called data2 Let's remind ourselves what that
# is
str(data2)
head(data2)
summary(data2)
# Looks like we have a data frame with 4 columns with the
# following columns X= id phytochem= represent consentration
# of bad chem farm= the amount of farm pasture around our
# sampling sit rare= an indicator that is at high abundance
# when our sample area is healthy Lets plot some of these so
# we can Remember we can index/subset the data we wish to use
# using the $ operator
plot(x = data2$phytochem, y = data2$farm)
plot(x = data2$phytochem, y = data2$rare)
plot(x = data2$farm, y = data2$rare)
# Something different will happen if you feed plot() a
# dataset name that has more than 2 variables.....
plot(data2)
# Isn't that cool!

### Plot Arguments (you surely will argue with plots) ###

# You can change the labels, which R trues to figure out
# based on the data you feed it, but it's not always pretty
plot(data2$farm, data2$rare, xlab = "Amount of Farm Near Sample Site",
  ylab = "Indicator")
# and we can add a main title
plot(data2$farm, data2$rare, xlab = "Amount of Farm Near Sample Site",
  ylab = "Indicator", main = "Impacts")
# Well this is getting a bit unruly; It's possible to code
# like this
plot(data2$farm, data2$rare, xlab = "Amount of Farm Near Sample Site",
  ylab = "Indicator", main = "Impacts", sub = "How Convenient!"  # and let's throw in a subtitle!
)
# We can also change the shape with the pch= argument and the
# color of the points with col= argument

plot(data2$farm, data2$rare, xlab = "Amount of Farm Near Sample Site",
  ylab = "Indicator", main = "Impacts", sub = "How Convenient!",
  pch = 2, col = "blue")

### Graphical 'Par'ameters There a couple of useful graphical
### parameters that can be used to help display information,
### like if you want to put more than 1 graph in the output
par(mfrow = c(1, 2))  # Remember that in R first comes rows then comes columns
boxplot(ypois, horizontal = TRUE)
hist(ypois)
#

# Just remember to put the graphical parameters back to the
# normal settings when you are done!
par(mfrow = c(1, 1))
# Sometimes we may want to add a vertical line to the plot
# lets display the plot we made

plot(data2$farm, data2$rare, xlab = "Amount of Farm Near Sample Site",
  ylab = "Indicator", main = "Impacts", sub = "How Convenient!",
  pch = 2, col = "blue")
abline(h = 20)  # this gives us a horizontal line
# Let's try to save our work to an object

myplot <- plot(data2$farm, data2$rare, xlab = "Amount of Farm Near Sample Site",
  ylab = "Indicator", main = "Impacts", sub = "How Convenient!",
  pch = 2, col = "blue")
# And try to print it...
myplot
# And here we have found a big limitation to base R graphics
# It isn't easy to save plots in base R for later use instead
# we have to rerun the whole plot code, which can be annoying
# There are other ways to plot though that don't have this
# limitation

######## Lesson 7: Visualization 2 ###########

### ggplot2 ###





######## Lesson 8: Linear Modeling/ANOVA ###########
