# Assignment: Lab1_2
# Student Name: Kenneth Park
# Date: 08-26-2022

# Required packages
# Load all required packages below using the library() function.
library(tidyverse)

# Ex 3.3.1: #1 (modified)
# What’s gone wrong with the code below? Why are the points not blue?

not_blue_point_plot <- ggplot(data = mpg) + 
    geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

not_blue_point_plot

# Correct the ggplot code above to display blue color for its point geom.

## Your code starts below this line

blue_point_plot <- ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

blue_point_plot

## Your work ends before this line

## DIFFICULTY: TECHNICAL