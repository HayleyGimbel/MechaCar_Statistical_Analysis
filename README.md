# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![mechacar_data](Deliverable_1.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- The linear regression shows that Intercept, vehicle_length and ground_clearance provided a non-random amount of variance to the mpg values in the dataset. 

Is the slope of the linear model considered to be zero? Why or why not?
- The r-squared value is 0.72 which means that more than half of mpg predictions will be correct when using this linear model. In addition, the p-value of our linear regression analysis is 5.35e-11, which is smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.


Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- Yes, the linear model will correctly preditc the mpg of MecharCar prototypes 72% of the time.  This is indicated by the r-squared value which is 0.72.

