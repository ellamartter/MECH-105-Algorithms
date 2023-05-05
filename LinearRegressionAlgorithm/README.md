Linear Regression Algorithm
------
This MATLAB function computes a linear regression line for a given set of data, eliminates outliers and calculates an R squared value to determine the accuracy of the line best fit.
___________

**Inputs:** x-array of independent variables, y-array of dependent variables based on x

*Note: Both arrays must be the same size.*
___________

**Outputs:** an x-array sorted with outlies removed, a y-array with outliers removed and sorted based on x-values, the slope and y-intercept of the linear regression line, R-squared value
___________

**Example:** finding the linear regression line for the following data set:

| x | y |
|---|---|
| 12 | 15 | 
| 4 | 2 |
| 9 | 6 |
| 2 | 11 |
| 7 | 4 |

linearRegression(12 4 9 2 7, 15 2 6 11 4)
