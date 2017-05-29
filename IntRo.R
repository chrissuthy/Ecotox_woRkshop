######IntRo Workshop#######
###June 14, 2017###
###UMass Amherst###
###Presented by Blake Massey, Joe Drake, & Dr. Chris Sutherland###


####Welcome to the R World!######

########Lesson 1: Intro########### 

#Here you are, sitting in the R programming environment and RStudio Script Window
#Below you (or possibly above), you have your console  

#Try typing into the console, "Hello World!"
#What happens?

#You get an error? Why? Because you don't know what's going on yet!

#That's why you are here, so....

#Lets get started!

#Your working directory is where all of the work you are doing is gets stored...
#Think about it as a folder where you want to save your work, and where things are stored
#R has a default directory, but you don't want to save keep everything there
#Otherwise it could get pretty messy in there.  Let's find out where our directory is now.

#Type:

getwd() #This tells you where your working directory is...

#into your console.  But we don't want to work there. 
#Hopefully you have a folder this R file is already sitting in. 
#Find the directory you put it in.
#If you copy and paste the directory path from Windows Explorer, make sure to reverse the slashes or double them.
#Each's just an R thing (you'll find there are alot of them).

#Try typing:

setwd("[Copy/Paste dir here and edit as needed]") #charater strings often need to be couched in ""
#Mac: "/" vs. Windows: "\\" 
#setwd(choose.dir()) #shortcut method with a popup menu 

getwd() #use it again to confirm you successfully changed your working directory

#There are a lot of things that R can do by itself, but one of it's strengths 
#is its opensource nature and the development that occurs to create "packages"

#Let's load a package called "swirl"

install.packages("swirl")  #this installs package into your computer
library(swirl)  #this loads it into your workspace, so you can use it 

#Below is a function in the package swirl.  Try typing it in, pressing enter, and I will see you on the other side

swirl() # enter your name, follow directions, and select R Programming, Lesson 1: Basic Building blocks

#Type 'bye()' into the console if you need to leave swirl early

#That is swirl, a great way to reinforce what we learn today!
#I suggest going through each of the lessons when you get home!

#Now to take the training wheels off!

#Let's start learning more about R

###Basic Operator Examples

5+7 # R can be a simple calculator...

x<-5 # But like we learnend in the swirl lesson, it can store values to do more with later.

x-7 # We can use these stored items for later calculations...

x^2 # Such as exponentiation. 

### Basic Function Examples

#Sometimes we need to combine a series of numbers to do what we want

y<-c(5, x, x^2) # c() this is the "concatenate" function that combines values into a list 

print(y) # and this function prints the values of an object.

#and as we saw at the beginning, the function setwd() allows us to control where our work space is set.

### Data classes

#integer

#double

#logical

#character

#complex

### Atomic Vectors

# Atomic vectors are a sequence of elements of the same data type

#integer

c(1, 2, 5, 8, 192)

#double

c(1.4, 3.15, 17.082)

#logical

c(TRUE, FALSE, FALSE, TRUE, TRUE)

#character

c("Amherst", "Site 27", "Ephemeroptera")


### Creating Objects pt 1: vectors

x <- c(2, 4, 6) #c() combines these values to create a vector of integers
print(x) # print() prints the values stored in the object called
x <- 2:6
x # by calling the name of stored object, we can print the value in the console too.
x <- seq(2, 3, by=0.5) # seq() creates a sequence of numbers length the distance between arguments 1 and 2, the 'by=' argument designates the interval size.
x
x <- rep(1:2, times=) #rep() creates a repitition of numbers, the length of argument 1, "times=" argument tells us how many times it repeats.
x
x <- rep(1:2, each=3) #this rep() creates an object of each integer in the interval designated by the "each=" argument.
x

#Let's practice with swirl() again; remember to type: 

swirl() # to get it started up.  This time we will select R Programming lesson 3: Sequence of Numbers

#Type 'bye()' into the console if you need to leave swirl early or when you are finished

### Creating objects pt 2: Matrices, Dataframes, and lists

mt <- matrix(1:9, nrow = 3) # matrices are 'tables' of numbers of a single type

df <- data.frame(x = 1:3, y = c('a', 'b', 'c')) # data frames can be tables of multiple data types.

lt <- list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))

class(lt) # check to make sure it is a list

### Subsetting and indexing data

# Sometimes we will only want to use a subset of our data objects for any given project or calculation.
# We will need to start with vectors.

# Lets pull up

swirl() # one more time and load R Programming, Lesson 6: Subsetting Vectors.

#Type 'bye()' into the console if you need to leave swirl early or when you are finished


### More Functions: Importing Data

#read.csv


#pull data from git hub repository

#import data, cbind names, get it set up for plotting
