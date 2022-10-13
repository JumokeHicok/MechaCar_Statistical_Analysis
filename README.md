# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
- Vehicle length and ground clearance provide non-random amounts of variance to the mpg values.
- No, the slope of the linear model is not considered to be zero. The slope can only be zero if there is no correlation between the dependent and independent variables.  In this case we know that the variables do impact mpg, therefore, the slope cannot be zero.
- Because of the high R-squared value and low P-value we are able to say that this linear model does predict mpg effectively. 


###### Linear Regression:
![Summary](/Resources/mpg_lm.png)

###### Summary (p-value and r-squared value):
![Summary](/Resources/mpg_lm_summary.png)


## Summary Statistics on Suspension Coils 
The manufacturing data does not meet the design specifications of all lots having a suspension coil variance less than 100 psi.  Lots 1 and 2 meet the requirements but lot 3 does not as it's variance is 170 psi.

![PSI Lot Summary](/Resources/psi_lot_summary.png)

## T-Tests on Suspension Coils
Based on the T-tests we can say that because the P-values for Lots 1 and 2 are close to zero we can reject the null hypothesis.  They are statistically different than the mean of the population.  

Lot 3 has a P-value higher than our significance level of 0.05 and is therefore statistically similar to our population mean of 1500 psi.

![T-Tests 2](/Resources/ttest2.png)

## Study Design: MechaCar vs Competition

For our studdy we are going to test fuel efficiency for highway mpg.

Our hypothesis is that MechaCar will out perform other manufacturers in highway mpg for 2022 vehicles in all class categories.

To test this hypothesis we will use an ANOVA test because we will be testing the two independent categorical variables (car manufacturer, class) against the dependent continuous mpg variable.

The data that we will need to include for testing would be car manufacturer, model, hwy mgp, and class.


