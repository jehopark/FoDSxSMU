[Foundations of Data Science with Capstone at SMU, Summer 2023]
Foundations of Data Science with Capstone at SMU
========================================================
author: Dr. Jeho Park
date: July 17, 2023
autosize: true



Introduction: Instructor
========================================================
__About Me__

Email: dr.jeho.park@gmail.com  
Kakaotalk ID: jehotalk  
LikedIn: https://www.linkedin.com/in/jehopark/  

- Studied Computer Science and Applied Mathematics (Statistics)
- Statistical modeling on parallel processing performance
- Associate Director of Harvey Mudd College’s Scientific Computing and Research Computing, promoting CS and data analytics to non-CS people
- Director of Claremont McKenna College's Quantitative and Computing Lab, a comprehensive support center for computing and data analysis
- Director and Visiting Assistant Professor for Data Science Capstone Program

Introduction: TA
========================================================
__About TA__


Introduction: Students
========================================================


```r
# About YOU!!
```
> Game Rules:  
> - __Open your camera and mic__  
> - __All the information you present should be different from the information of the previous people (except major and year).__

- Name
- Major and Year
- Recommend one of your favorite movies/books/TV shows/songs
- Recommend one of your favorite restaurants around SMU
- Your expectation(s) from this course




Course Goal
========================================================

__After taking this course, you’ll be able to utilize the tools required to tackle a wide variety of data science challenges using R.__

Course Schedule
========================================================
| Day 	| Title                               	| Topics                                                                                 	|
|-----	|-------------------------------------	|----------------------------------------------------------------------------------------	|
| 1   	| Introduction and Data Visualization (1)                        	| Introduction to Data Science; RStudio; R Markdown; Graphical grammars (ggplot2)                                      	|
| 2   	| Data Visualization (2)              	| Visualization in the tidyverse; Aesthetic mappings                                                          	|
| 3   	| Data Wrangling (1)                  	| R basics for data wrangling; Basic R objects and operators; Transforming data (filter) 	|
| 4   	| Data Wrangling (2)                  	| Transforming data (dplyr); filter, arrange, select, summarise, group_by; piping        	|
| 5   	| Exploratory Data Analysis and Stats 	| Why EDA; Some statistics; Variation; Covariation                                       	|
| 6   	| Working with different data types   	| Vectors; Factors; Strings; Dates and Times                                                      	|
| 7   	| Programming in R                     	| Pipes; Functions; Iteration and vectorization                                          	|
| 8  	| Modeling                            	| Regression; Linear models; Understanding residual                                      	|
| 9  	| Capstone Project Kickoff                       	| Project Proposal Review                                      	|
| 10  	| Capstone Project Presentation                            	| Online Presentation                                      	|




Expectations
========================================================
1. __참가하는 수업 | Participation is the key__  
    *Show your attention (open camera, use gestures, chat, voice, etc.).*
    
1. __연습/실습하는 수업 | Do all the hands-on examples__  
    *No exception!*

1. __경험하는 캡스톤 수업 | During the first 2 weeks, you will need to find a data project for your final presentation and poster__  
    *Instructor and TA will help you on this*



Course Technologies
===================
- Canvas (homework and discussion)
  - https://canvas.instructure.com/enroll/EK9RPL (enroll now!)
- GitHub (course materials)  
  - https://jehopark.github.io/FoDSxSMU/ (course web page)
- Communication Channel
  - Email (dr.jeho.park@gmail.com) and 카톡방?

Course Syllabus
========================================================
See if you can access this doc at

[Course Syllabus](https://github.com/jehopark/FoDSxSMU/blob/master/Foundations%20of%20Data%20Science%20with%20Capstone-Summer%202023%20v3.pdf)

Text Book
========================================================
[Main Text] __R for Data Science by Hadley Wickham and Garrett Grolemund__

- https://r4ds.had.co.nz/ (English Version)

- https://bookdown.org/sulgi/r4ds/ (Korean Version) -- This might be outdated, so check its updates.

[Reference] 

1. __Foundations of Data Science by Mark Huber__  
  https://www.markhuberdatascience.org/data-science-text
   
2. __Hands-On Programming with R by Garrett Grolemund__  
  https://rstudio-education.github.io/hopr/

Introduction to Data Science
========================================================
__Today's Goals__

(1) Make sure everyone set the RStudio environment    
(2) Get familiar with RStudio environment  
(3) Create a first R markdown file  
(4) Learn basic visualization methods and grammars of graphics using ggplot2 package   
(If time permits, solve exercise problems and add solutions to a markdown)

What is Data Science?  
=============
## 데이터 과학이란 무엇인가?


데이터 과학은 데이터를 이해하고 활용하기 위해 수학, 통계학, 컴퓨터 과학 등의 다양한 학문과 기술을 결합하는 학문 분야입니다. 

데이터 과학은 데이터를 수집, 정제, 분석하고 모델링하여 통찰력을 얻고 예측이나 패턴 인식을 통해 데이터를 근거로 한 의사 결정을 위해 데이터를 활용하는데 중점을 둡니다. 

데이터 과학은 실제 상황에서 문제를 해결하고 효과적인 의사 결정을 내리기 위해 데이터를 탐색하고 인사이트를 도출하는 모든 프로세스를 포함합니다.

[Breakout Session 1] Open Discussion
=================
- Team up!

- Discuss briefly about what the informed decisions might be in your domain/field (5 min)

- Share your team's example(s) in the main room (5 min)

Typical Data Science Project Workflow
===================
<br><div align="center">
  <img src="images/data-science.png" width=1200>
</div>

R and RStudio
=============
<div align="center">
  <img src="images/rstudio-interface.png" width=1400>
</div>

What is R?
========================================================
* R is a statistical programming language and environment.
* R is open source/free.
* R is widely used.
* R is cross-platform.
* R is hard to learn (?)

What is not R?
========================================================
* S: R's ancestor
* S-Plus: Commercial; modern implementation of S
* SAS: Commercial; widely used in the commercial analytics.
* SPSS: Commercial; easy to use; widely used in Social Science.
* MATLAB: Commercial; can do some Stats. 
* Python: Also can do some Stats; good in deep learning

Whic is better for Data Science? R or Python?
=============
R is Useful and easier to do __Statistical Modeling and Visualization__

---------

Python has a great collection of libraries to do __Machine learning and Deep Learning__

R Packages
========================================================
- R is known for its community and its huge collection of user-generated packages
- Packages are collections of R functions, data, and compiled code in a well-defined format. The directory where packages are stored is called the library.
- We will install the `tidyverse` package, a collection of R packages for data science


```r
install.packages('tidyverse') # you can also use RStudio's Packages tab

# You should load dplyr package first to use any functions and datasets in the package
library(tidyverse) 
```

What is RStudio?
========================================================
* Integrated Development Environment for R
* Nice combination of GUI and CLI
* Free and commercial version
* 4 main windows, tabs, etc
* Version control: Git and VPN
* Debugging 
* Documentation: R Markdown
  - install.packages("rmarkdown")
  - http://rmarkdown.rstudio.com/
* Presentation slides: R Presentation (this one!)


How to Get Help
========================================================
* ChatGPT
* Stack Overflow: http://stackoverflow.com/questions/tagged/r
* Cross-Validated: the statistics Q&A site http://stats.stackexchange.com/
* Google


[Hands-On] Check Your R Environment 
========================

- Check R (if you don't have R, install it now)

- Check RStudio (if you don't have RStudio, install it now)

- Share your screen

[Hands-On] First R Project 
========================

- Create a new project named "FoDSxSMU"

Documentation: R Markdown 
========================
__R Markdown is our main documentation tool__

- Basic Formatting
  - Global options
  - Text formats
- R Code Chunks
  - Code chunk options
- R Markdown cheat sheet and quick reference
  - https://rmarkdown.rstudio.com/lesson-15.HTML

R Markdown Basic Formatting
======================

Open "Basic_formatting.Rmd"


[Hands-On] First R Markdown 
========================
__R Markdown__  

1. Create a new R Markdown (Rmd) file named "FoDSxSMU_Day1"
1. Check if you have knitr package (if not, install it)
1. Check R Markdown Cheatsheet
1. Check this website
https://ntaback.github.io/UofT_STA130/Rmarkdownforclassreports.html#what_is_markdown

[Hands-On] First R Markdown (cont.)
========================
__R Markdown__ 

Let's go over __Section 27.3__ Text Formatting.

- Copy and paste Section 27.3 code snippet into your Rmd file


[Hands-On Exercise 1] R Markdown Exercise 
=================

1. Add your name in the header section

1. Do 27.3.1 #2 exercise

1. By the end of today's lab session, upload your Rmd file at Canvas 과제제출 페이지 (Hands-On Exercise #1 R Markdown)


Session 2
===========================
# Visualization


Visualization with ggplot2: tidyverse package
======================
* Load tidyverse package in your environment

```r
# if you don't have the package installed yet
# install.package("tidyverse")
library(tidyverse)
```
>> This should load several packages. See the R message on the console. Notice the "Conflicts" -- what does this mean?

mpg dataset
==================

```r
?mpg
```

<div align="center">
  <img src="images/mpg.png" width=800>
</div>



Visualization with ggplot2: a quick look
======================

```r
# library(ggplot2)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
```


```r
# Compare ggplot() with plot() from base package
base::plot(mpg$displ, mpg$hwy)
```

>> Let's look at a grammar of graphics


Visualization with ggplot2: A Grammar of Graphics
=======================

>> A grammar of graphics is a set of tools for building graphics by adding components and transformations __layer by layer__.  

--

>> Every ggplot2 plot has three key components:
>> - __Data__,
>> - A set of __aesthetic mappings__ between variables in the data and visual properties, and
>> - At least one __layer__ which describes how to render each observation. Layers are usually created with a `geom` function.



Visualization with ggplot2: A Grammar of Graphics (cont.)
=======================
>> Every ggplot2 plot has three key components: data, aesthetic mappings, geometric object


```r
library(ggplot2) # load ggplot2 package
ggplot(data = mpg) + # data
  geom_point(mapping = aes(x = displ, y = hwy)) # geometric object and aesthetic mapping
```

Template
======

```
ggplot(data = <DATA>) + 
  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))
```

Visualization with ggplot2: Aesthetic Mapping
=======================
Maps data into graphic components: x, y, color, shape, etc.


Visualization with ggplot2: A Grammar of Graphics
=======================
Most points on the plot form a nice linear relationship while there are some points that don't seem to follow the relationship. What types of cars are they? 


```r
ggplot(data = mpg) +  
  geom_point(mapping = aes(x = displ, y = hwy, color = class)) # create 
```


```r
# Color does not always work for everyone. How about different shapes?
ggplot(data = mpg) +  
  geom_point(mapping = aes(x = displ, y = hwy, shape = class)) # Any issue with the shape option?
```

Geometric Objects (geom)
=======================
A __geom__ is the geometrical object that a plot uses to represent data. 

For example:  
- bar charts = bar geoms
- line charts = line geoms
- boxplots = boxplot geoms
- scatter plot = point geoms

>> There are over 40 geoms in ggplot2 package.

Geometric Objects (geom): Where to put aesthetic mapping?
=======================

```r
# Using point geom
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
```


```r
# Using smooth geom
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))
```


```r
# We can display multiple geoms in one plot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))
```

Geometric Objects (geom): Where to put aesthetic mapping?
=======================

```r
# Using multiple geoms
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth() 
```


```r
ggplot(data = mpg) + 
  aes(x = displ, y = hwy) + 
  geom_point() + # Add mapping = aes(color = class) 
  geom_smooth() 
```


```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  geom_smooth() # got error? why?
```

Mapping Scope: Global and Local
==========================
Global mapping: the mappings of variables are done when the `ggplot()` is called  

Local mapping: the mappings of variables are done when the geom layer is called

>> Local mapping in a layer overrides the global mapping for that layer.


```r
library(dplyr) # to use `filter` function below

ggplot(data = mpg) + 
  aes(x = displ, y = hwy) + 
  geom_point(mapping = aes(color = class)) + # use the global mapping
  geom_smooth(data = filter(mpg, class == "subcompact"), se = TRUE) 
```

Grammar of Graphics
=====================
Defines a plot as the combination of

1. __Data__
2. __Aesthetic Mapping__ (대응)
3. __Geometric Object (representation)__
4. (Statistical Transformation)
5. Position Adjustment

Position Adjustments (demo)
================
To add clarification or to show additional information on one plot, we can use position adjustment methods in ggplot2.

(1) To avoid overlapping of points:


```r
ggplot(data = mpg) + 
  aes(x = displ, y = hwy) + 
#  geom_point()
  geom_point(position = "jitter")
```

Position Adjustments (demo) 2
================
(2) To show additional information through visual representation

- Barcharts
  - Simple barcharts
  - Colored barcharts
  - Stacked barcharts
  - Side-by-side barcharts


```r
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))
```


```r
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))
```


```r
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")
```


```r
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")
```


[LAB1] Day 1 Practice
==================
__For all exercises below, save the result ggplot2 object in `p`__


- (Lab1\_1) 3.2.4: #4 (modified)   
__Using the `mpg` data, make a scatterplot of `hwy` vs `cyl`__

--

- (Lab1\_2) 3.3.1: #1 (modified)  
__What’s gone wrong with this code? Why are the points not blue?__

```r
not_blue_point_plot <- ggplot(data = mpg) + 
    geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

not_blue_point_plot
```

__Correct the ggplot code above to display blue color for its point geom.__

--

- (Lab1\_3) 3.6.1: #1 (modified)   
__What geom would you use to draw a boxplot?__  
__Draw boxplots showing highway miles per gallon for each different car type.__  











