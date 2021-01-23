---
title: "Course Project: Shiny Application and Reproducible Pitch"
author: "blublebli"
date: "1/23/2021"
output: ioslides_presentation
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```

## About the Course Project



Instructions:

1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2. Deploy the application on Rstudio's shiny server
3. Share the application link by pasting it into the provided text box
4. Share your server.R and ui.R code on github

## How to use the application

Using the data provided by Galton Families dataset, we fit a linear model to predict a child's height based on the gender and parent's average height.


ui.R, and Server.R Code in my github repository (https://github.com/xssokolova/Course-Project-Shiny-Application-and-Reproducible-Pitch)

## Diamond dataset

The diamonds dataset we used in this application exercise consists of prices (SIN $) and carat mass.

```{r, include=FALSE}
library(UsingR)
data(diamond)
```

```{r summary}
str(diamond)
```

## Plot of carat vs price 

```{r, include=FALSE}
library(plotly)
```

```{r, echo=FALSE}
plot_ly(diamond, x = ~carat, y = ~price, type = "scatter", mode="markers")
```