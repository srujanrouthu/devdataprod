Mileage Prediction
========================================================
author: Srujan Routhu
date: September 21, 2014
font-family: 'Helvetica'
transition: rotate

App can be accessed [here](https://srujanrouthu.shinyapps.io/Project1/)
Introduction
========================================================

Welcome to the Mileage Predictor App. You can use this app to estimate the miles per gallon that a vehicle might give based on its weight and the number of cylinders present.

This is a particularly useful app for potential new car owners who wish to estimate the mileage of their options of vehicles.

This model for prediction is built using the mtcars dataset avaiable in RStudio.

Inputs
========================================================

Weight of the Car

- Measured in lb/1000.
- Range of values is 1000 lbs to 6000 lbs.

Summary:


```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1.51    2.58    3.32    3.22    3.61    5.42 
```
***

Number of Cylinders

- Unitless number measure
- Set of acceptable input values is {4, 6, 8}

Summary:


```
 4  6  8 
11  7 14 
```

Model
========================================================

Following is the model specification and coeffecients of the model.


```r
fit <- with(data, lm(mpg ~ wt + as.factor(cyl)))
```


```
(Intercept) 
      33.99 
```

```
    wt 
-3.206 
```

```
as.factor(cyl)6 
         -4.256 
```

```
as.factor(cyl)8 
         -6.071 
```

