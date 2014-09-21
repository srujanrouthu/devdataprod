---
title: "Mileage Predictor App - Documentation"
author: "Srujan Routhu"
date: "Monday, September 22, 2014"
output: html_document
---

This is a user documentation for Mileage Predictor App.

### Inputs

There are two input paramenters.

1. Weight: unit - lb/1000, range - [1, 6]
           Gives us the weight of the vehicle for which the mileage is to be predicted.
           
2. Number of Cylinders: range - {4, 6, 8}
           Specifies the number of cylinders present in the vehicle.
           
### Model

The model for predicting the mileage has been developed using the mtcars dataset in R. After going through various combinations of predictor variables, the ones having a significant effect were the weight of the car and the number of cylinders.

For more details on the model specification please click [here](https://github.com/srujanrouthu/Regression-Models)


```r
library(datasets)
data <- mtcars

fit <- with(data, lm(mpg ~ wt + as.factor(cyl)))
fit$coeff
```

```
##     (Intercept)              wt as.factor(cyl)6 as.factor(cyl)8 
##          33.991          -3.206          -4.256          -6.071
```

The coefficients obtained above were used to predict the miles per gallon variable.
