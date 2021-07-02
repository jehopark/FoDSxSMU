[Foundations of Data Science with Capstone at SMU, Summer 2021]
Day 2: Visualization (1)
========================================================
author: Dr. Jeho Park
date: 
autosize: true



DAY1 and LAB1 Review
========================================================

Any questions?


Typical Data Science Project Workflow
===================



Goal of First Few Days
====================
__Learn fun and intuitive ways to learn data using R__

Visualization with ggplot2: tidyverse package
======================
* Load tidyverse package in your environment

```r
# if you don't have the package installed yet
# install.package("tidyverse")
library(tidyverse)
```
>> This should load several packages. See the R message on the console. Notice the "Conflicts" -- what does this mean?

Visualization with ggplot2: a quick look
======================

```r
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))
```


```r
# Compare ggplot() with plot()
plot(mpg$displ, mpg$hwy)
```

>> Let's look at a grammar of graphics

Visualization with ggplot2: A Grammar of Graphics
=======================

>>> A grammar of graphics is a set of tools for building graphics by adding components and transformations __layer by layer__.
  
>>> Two basic layer components: __Data__ and __Aesthetics__


```r
ggplot(data = mpg) +  
  geom_point(mapping = aes(x = displ, y = hwy)) 
```

Breakout Session: Guess a relationship between two variables
=======================
1. Look at the help document of the data frame `mpg` (how?)


2. Discuss relationship between any two variables, e.g., engine displacement in liters and highway MPG.

3. See if your guess is in line with the scatter plot


Visualization with ggplot2: A Grammar of Graphics
=======================
Most points on the plot form a nice linear relationship while there are some points that don't seem to follow the relationship. What types of cars are they? 


```r
ggplot(data = mpg) +  
  geom_point(mapping = aes(x = displ, y = hwy, color = class)) 
```


```r
# Color does not always work for everyone. How about different shapes?
ggplot(data = mpg) +  
  geom_point(mapping = aes(x = displ, y = hwy, shape = class)) 
# Do you find any issues?
```
