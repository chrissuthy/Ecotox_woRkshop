

# Working Directory
getwd()	 					 # show current working directory
setwd("C:/Work/R/Workspace")	 # set working directory

install.packages(pkg)	# downloads package from CRAN
library(pkg)         	# loads package into the R environment

install.packages(swirl)
library(swirl)
swirl()

# Open "R Programming, Lesson 1: Basic Building Blocks"
swirl()

# 1: R Programming: The basics of programming in R

# 1: Basic Building Blocks

# Leave swirl by using the bye() function
bye()

5 + 7
x <- 5 + 7
y <- x - 3
z <- c(1.1, 9, 3.14)
?c
c(z, 555, z)
z * 2 + 100
my_sqrt <- sqrt(z - 1)
my_sqrt
my_div <- z/my_sqrt
my_div
c(1, 2, 3, 4) + c(0, 10)
c(1, 2, 3, 4) + c(0, 10, 100)
z * 2 + 1000
my_div

# Examples of Basic R Syntax
5					  # a constant
my_sqrt 		  	  # a variable
mean()	  		  	  # a function (which is also an object!)
<-			      	  # an operator (a type of function)
if					  # a control statement (a type of function)

# Constants
42		  # built-in constants (numeric)
letters   # built-in constants (characters)

# Variables
my_town  <- "Amherst"	# variable created by user

# Basic Data Classes
character  # strings
integer    # whole numbers
numeric    # real numbers; aka "double"
logical    # TRUE or FALSE
complex    # complex numbers; i.e., (n + ni)
raw        # raw byte value

# Special Values
TRUE 	# true
FALSE 	# false
NA		# not available
NaN		# not a number
NULL    # list of zero length (an empty list)
Inf  	# infinity
-Inf  	# negative infinity


# Built-in Constants (Numeric)
1.3				# numeric sequence with or without a decimal
5L				# L suffix = integer class
2.1e-10			# numeric seq, followed by e or E, then 10 or -10
pi				# 3.14159265…

# Built-in Constants (Characters)
letters 		# 26 lowercase letters
LETTERS			# 26 uppercase letters
month.name		# Month names
month.abb		# Month names abbreviations (3 letters)

# Built-in Constants (Special)
Inf		 		# infinity (-Inf is negative infinity)
NA       		# not available
NaN      		# not a number

THROUGH 20

i <- 5L    # an L suffix coerces numeric elements to integer
class(i)
z <- c(1.1, 9, 3.14)
class(z)

alpha <- c("m", "a", "s", "s")
class(z)
tf <- c(TRUE, FALSE, TRUE)  # notice no quotes
class(tf)

# Atomic Vectors
my_log  <- c(TRUE, FALSE, FALSE) 					# logical
my_int  <- c(1L, 6L, 17L)        					# integer
my_num  <- c(1.4, 3.15, 17.082)  				    # numeric
my_chr  <- c("Amherst", "Site 27", "Ephemeroptera") # character
my_log

# Atomic Vectors
my_log  <- c(TRUE, FALSE, FALSE, 6L)   # add integer
class(my_log)	# coerced into integer
my_int  <- c(1L, 6L, 17L, 37.621)   # add numeric
class(my_int)	# coerced into numeric
my_num  <- c(1.4, 3.15, 17.082, "Summer") # add character
class(my_num)	# coerced into character
my_chr  <- c("Amherst", "Site 27", "Ephemeroptera", TRUE)
class(my_chr)  # stays character


builtins() 		# list all built-in objects (mostly functions!)
class(print)	# function’s class is "function"
class(`+`)		# operator’s class is "function"
class(`if`)		# control’s class is "function"


# Unary versus binary operations
 -x     # Unary operations have one operand
x - y	# Binary operations have two operands

# Logical Operators (Return TRUE or FALSE)
?`<`     # less greater than
?`>`     # less greater than
?`<=` 	 # less than or equal to
?`>=`	 # greater than or equal to
?`==`	 # equal to
?`!=` 	 # not equal to
?`&`     # and (vectorized)
?`&&` 	 # and (non-vectorized)
?`|`  	 # or (vectorized)
?`||` 	 # or (non-vectorized)
?`%in%`  # contains

# Logical Operators Examples
3 < 5
7 > 4
7 <= 7
7 >= 7
3 == 3L
4 != 5
TRUE & TRUE
FALSE && c(TRUE, FALSE, TRUE)
TRUE | FALSE
FALSE || c(TRUE, FALSE, TRUE)
"g" %in% c("e", "f", "g")
"a" %in% c("e", "f", "g")

# Assignment/Creation Operators
<- 	 # assign in current environment
<--	 # assign in global environment
=	 # assign (use inside of function arguments)
:	 # create sequence

# Indexing/Extraction Operators
[] 	  # index (returns list)
[[]]  # index (returns list component)
$	  # extract named column or component
@	  # extract named slot
::	  # use a particular function from a package

  # Assignment/Creation Operators
my_var <- "g"	 # assign in current environment
pi <-- 4.12	 	 # assign in parent environment
times=8 		 # assign (use inside of function arguments)
3:7 			 # create sequence

# Indexing/Extraction Operators
lst[n] 	 		 # index (returns list)
lst[[n]]  		 # index (returns list component)
lst$var	 		 # extract named column or component
lst@var	 		 # extract named slot
raster::crop	 # use a particular function from a package


# Assignment/Creation Operators
?`<-` 	 # assign in current environment
?`<<-`	 # assign in global environment
?`=`	 # assign (use inside of function arguments)
?`:`	 # create sequence

# Indexing/Extraction Operators
?`[`	  # index (returns list)
?`[[`  # index (returns list component)
?`$`	  # extract named column or component
?`@`	  # extract named slot
?`::`	  # use a particular function from a package

# Special Operators
?`!`         # negation
?`~`	  # used for model formulae
?`%%`     # special operators (infix type)
?`?`		  # help search

# Example of Infix Operator and Matching Function
6 + 2	   # infix operator
`+`(6, 2)  # function, need backticks around name

# Example of Infix Operator and Matching Function
4:9		   # infix operator
`:`(4, 9)  # function, need backticks around name

# Example of Infix Operator and Matching Function
var_1 <- "Amherst"		# infix operator
`<-`(var_1, "Amherst")  # function, need backticks around name
var_1

# Logic Evaluations Examples
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7
6 < 7
10 <= 10
5 != 7
!(5 == 7)
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)

# Basic Function Layout
output <- function_name(arguments)

# Example of Function Arguments
round(6.248) # press tab to see function’s arguments
round(6.248, digits = 0) # equivalent to previous line
round(6.248, digits = 1) # rounds to 1 decimal places
round(6.248, digits = 2) # rounds to 2 decimal places

# Examples of Arguments
c(...)         		# "..." are objects to combine
print(x, ...)  		# x = R object; "..." = additional arguments
length(x)	   		# x = R object
rep.int(x, times)   # x = vector; times = number of times to repeat
Sys.Date()			# no arguments
