[Foundations of Data Science with Capstone at SMU, Summer 2021]
Day 4: Data Wrangling (1)
========================================================
author: Dr. Jeho Park
date: 
autosize: true



LAB3 Exercises
========================================================

__Before we move on to learn data wrangling methods, please take Day 2 quiz and Day 3 quiz now.__

__Let's do a couple of Lab3 exercises__

Git Setup
==========
__We will be using RStudio's Git/GitHub feature__

(1) Download and install git on your computer: https://git-scm.com/downloads  
(2) Restart RStudio   
(3) Go to your preference and check if RStudio has the git installation information.  
(4) Create a new project with a GitHub repo attached to it. (Follow instructions)


Today's Topics
==============
- Basic R Information
- Basic R Objects
- Working with Data:  
  - Built-in Data,  
  - Data Import, 
  - Data Exploration
- R Notebook
- Data Transformation with `dplyr`: filter
- R's Logical Operators

What Can We Do with R? Math (of course!)
========================================================

```r
1+1
```


```r
2+runif(1,min=0,max=1)
```


```r
3^2
```


```r
3*3
```


```r
sqrt(3*3) # square root function
```


```r
# comments are preceded by hash sign sqrt(3*3)
```


Some R Vocabulary
========================================================
* **packages** are add on features to R  include data, new functions and methods, and extended capabilities. Think of them as `apps` on your phone. We've already installed several!
* **console** is the main window of R where you enter commands
* **workspace** is the working memory of R where all objects are stored
* **script** is where you store commands to be run in the terminal later, like syntax files in SPSS, .do files in Stata, and py files in Python.
* **function** is a set of commands doing something to R object(s) by getting inputs, do work, and return outputs. 

Some Gene-R-al Stuff
========================================================

```r
demo() # display available demos
```

```r
demo(graphics) # try graphics demo
```

```r
library() # show available packages on the computer
```

```r
?hist # search for the usage of hist function
```


```r
??histogram # search for package documents containing the word "histogram"
```

Workspace of R
========================================================

R workspace stores objects like vectors, datasets and functions in memory (the available space for calculation is limited to the size of the RAM).


```r
a <- 5 # notice a in your Environment window
```


```r
A <- "text" 
```


```r
a
A
ls()
print(c(a,A)) # Guess what the c stands for 
print(a,A)
```

Basic R Objects: Vectors
========================================================
Vectors are array objects of the __same type__ data elements.


```r
class(a)
```

```r
class(A)
```

```r
B <- c(a,A) # concatenation
```

```r
print(B)
```

```r
class(B) # why?
```

Basic R Objects: Vectors (cont.)
========================================================
R has five basic or “atomic” classes of objects: 
* character
* numeric (real numbers) 
* integer
* complex
* logical (True/False)

A vector contains a set of data in any one of the atomic classes.

Basic R Objects: Data frames
========================================================
__Data frames are used for storing data tables as a collection of vectors of equal length.__  
  
__A data frame is a basic data object for this course!__


```r
n <- c(2, 3, 5) # a vector 
s <- c("aa", "bb", "cc") # a vector
b <- c(TRUE, FALSE, TRUE) # a vector
df <- data.frame(n, s, b) # a data frame
df
mtcars # a built-in (attached) data frame
mtcars$mpg # notice this new $ operator
```

Basic R Objects: Data frames (cont.)
========================================================
__Data frames are used for storing data tables__  
__It is a column-wide collection of vectors of equal length__. 

```r
df1 <- data.frame(y1=rnorm(100),y2=rnorm(100), y3=rnorm(100))
head(df1) # display first few lines of data
names(df1) # display column names
summary(df1) # output depends on the data types
plot(df1)
```


```r
df2 <- read.table("https://s3.amazonaws.com/assets.datacamp.com/blog_assets/test.txt", header = FALSE)
df2
```

R Objects: Factor
========================================================
* Factors are a special compound object used to represent __categorical data__ such as gender, social class, etc.
* Factors have 'levels' attribute. They may be nominal or ordinal.
* Remember the types of variables from Day 2? Factors are the R's implementation of quantitative variables.

```r
v <- c("a","b","c","c","b")
x <- factor(v) # turn the character vector into a factor object
z <- factor(v, ordered = TRUE) # ordered factor
x
z
table(x)
```

R Objects: Functions
=============================

```r
fun <- function(a,b) {
  a*b
}

fun   
fun(2,3) # a function call
```

Variable and Object Naming Convention
===================
Find all that can be a variable (or object) name in R from the following:


```r
4wheelDrive   

four_wheel_drive  

fourWheelDrive  

!my4wheeldrive  

_4wheelDrive  

Four.Wheel.Drive  
```

Working with Data
========================================================
* Built-in datasets and basic data import
* Quick data exploration with summary
* Hands-on exercise

Built-in Datasets 
========================================================
- R's datasets package has some built in datasets that we will be using.

```r
data() # this will bring up a document, R data sets
```

- Let's look at CO2 datasets. The CO2 data frame has 84 rows and 5 columns of data from an experiment on the cold tolerance of the grass species Echinochloa crus-galli.

```r
help(CO2) # see what the dataset is about
CO2 # display all the contents of the data frame, CO2
```

__Notice there's no CO2 dataframe in the Environment pane__

Data Import
========================================================
__Data file import is very easy with RStudio__

Follow the instructor and import "auto.csv" file!

Click-click-click-done!

Check if you have *auto* in your Environment.

[Hands-on] Data Exploration - Head or Tail?
========================================================
When you have a large dataset, it's impossible and inconvenient to display the whole contents of the dataset on the screen. You will want to check the first few rows or the last few rows of the dataset. 

In this exercise, you will create a Code Chunk in a new Notebook and do the following:
(1) Import "auto.csv" as auto_data
(2) Output the first row of auto_data using R's built-in function
(3) Output the last row of auto_data using R's built-in function

What is a R Notebook and What is the difference to R Markdown?
===================
__A R Markdown is a type of text file whose file extention is `Rmd`__

- When `knittr` renders (knits) the Rmd file, it generates an output file in either HTML, PDF, or Word format.

- It is the same concept as an HTML file. An HTML file is a text file containing HTML tags. When your browser renders the HTML file, it generates a web page.

__A R Notebook is a special (and convenient) way to work with R Markdown files.__

- One can "preview" a R Markdown file without running (evaluating) all the code chunks. 

- From the R Notebook editor window, you can selectively run code chunks for checking. 

- When you *preview* a R Notebook, it only includes the outputs that were already run in the editor mode.

- It is convenient when you have a long Markdown file.

Data Transformation
====================

```r
library(nycflights13)
library(tidyverse)
```

If you don't have the `nycflights13` package, install it.

Try `?nycflights13` to find out the details of the dataset.

In the next sections, we will be using functions from `dplyr` package.

Data Transformation: dplyr::filter()
=============
Let's create a new data frame, `jan1`, containing only the flights on January 1st.


```r
jan1 <- filter(flights, month == 1, day == 1)
```

Notice assignment operator (<-) and comparison operator (==)

Comparison and Logical Operators in R
=================================

Comparison Operators

| Operator | Description              |
|----------|--------------------------|
| <        | Less than                |
| >        | Greater than             |
| <=       | Less than or equal to    |
| >=       | Greater than or equal to |
| ==       | Equal to                 |
| !=       | Not equal to             |

------------------
Logical Operators

| Operator | Description              |
|----------|--------------------------|
| !        | Logical NOT              |
| &        | Element-wise logical AND |
| &&       | Logical AND              |
|          | Element-wise logical OR  |
|          | Logical OR               |
| xor(x,y) | Exclusive OR             |

TRUE or FALSE
===============

```r
# Logical Operators in R
5 < 2
(5 < 2) & (3 > 2)
(5 < 2) | (3 > 2)
5 %in% c(1,2,3,4,5)
is.na(c(1,2,NA,4,5))
```


```r
# vectorized (element-wise) operator
x <- c(TRUE, FALSE, FALSE)
y <- c(TRUE, TRUE, FALSE)
x & y   # returns a logical vector
x && y  # returns a Boolean value
```

Boolean Operators
=================

![Boolean](./images/transform-logical.png)

[Hands-On] Filter and Logical Operators
==============

1. Find all flights that departed in November or December.

1. Find all flights that weren’t delayed (on arrival or departure) by more than two hours

Missing Values and Comparison/Logical Operations
========================
It is important to remember that the results of any operations on rows with `NA` values will be unknown (NA) as well.


```r
NA > 5
#> [1] NA
10 == NA
#> [1] NA
NA + 10
#> [1] NA
NA / 2
#> [1] NA
```


LAB4
=============
- 5.2.4: Do all the problems

