# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG




1. Variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset:


According to our results, ground clearance and vehicle length are statistically unlikely to provide random amounts of variance to the linear model. In other words the ground clearance and vehicle length have a significant impact on mpg. 


2. Is the slope of the linear model considered to be zero? Why or why not?



The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.


3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Our R-squared value is what predicts the effectiveness of our model. R-squared is always between 0 and 100%. With a R-squared value of 0.7149 in our analysis below can predict 71.49% of the mpg of MechaCar protype predictions will be correct when using this linear model. . This means, there are other variables and factors that contribute to the variation in mpg that have not been included in our model. These variables may or may not be within our dataset and may still need to be collected or observed.



<img width="535" alt="Screen Shot 2021-01-30 at 11 31 03 AM" src="https://user-images.githubusercontent.com/71113701/106405486-f8614f00-63fb-11eb-8cfc-cc50505a879f.png">


## Summary Statistics on Suspension Coils

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Our coil_summary_table shows that the current manufacturing data meets this design specification with a variance of 62.29356.


<img width="378" alt="Screen Shot 2021-01-30 at 11 31 35 AM" src="https://user-images.githubusercontent.com/71113701/106363821-82bc8c80-62f0-11eb-9529-3a52b494c666.png">
<img width="491" alt="Screen Shot 2021-01-30 at 11 31 53 AM" src="https://user-images.githubusercontent.com/71113701/106363842-9ec02e00-62f0-11eb-8b8a-156f9e31b624.png">


Our mean PSI value for all manufacturing lots from the total_summary table is 1498.78 with a variance of 62.29 which is within the 100 PSI as per the design specifications. When we look at each lot individually in our lot_summary table, we notice that the lot1 and lot2 meet the design specification but the lot3 has a variance of 170.286 which is higher than the acceptable limit.



## T-Tests on Suspension Coils


Below are the t-tests for overall and all three lots individually. The p-value for overall is greater than the significance level 0.05 means the distribution of the data is not significantly different from normal distribtion. Therefore, we do not have sufficient evidence to reject the null hypothesis.




<img width="444" alt="Screen Shot 2021-01-30 at 11 36 48 AM" src="https://user-images.githubusercontent.com/71113701/106363668-8f8cb080-62ef-11eb-9cfb-a8066d89a9c8.png">


The p-value for lot1 is also greater than the significance level 0.05 means the distribution of the data is not significantly different from normal distribtion.Therefore, we do not have sufficient evidence to reject the null hypothesis.

 


<img width="537" alt="Screen Shot 2021-01-30 at 11 30 28 AM" src="https://user-images.githubusercontent.com/71113701/106363613-273dcf00-62ef-11eb-9b6d-7537becb6f67.png">





The p-value for lot2 is greater than the significance level 0.05 means the distribution of the data are not significantly different from normal distribtion.
Therefore, we do not have sufficient evidence to reject the null hypothesis 

<img width="569" alt="Screen Shot 2021-01-30 at 11 30 39 AM" src="https://user-images.githubusercontent.com/71113701/106363603-0e351e00-62ef-11eb-9ee1-bc4e222c907c.png">


The p-value for lot3 is less than the significance level 0.05 means the distribution of the data is significantly different from normal distribtion.Therefore, we do  have sufficient evidence to reject the null hypothesis.

 


<img width="474" alt="Screen Shot 2021-01-30 at 11 30 13 AM" src="https://user-images.githubusercontent.com/71113701/106363570-e04fd980-62ee-11eb-8355-fc18846be808.png">




## Study Design: MechaCar vs Competition.


What metrics would be of interest to a consumer (cost, fuel efficiency, color options, etc.)?


In this study I would like to focus on the highway fuel efficiency of MechaCar vs its competitors. This attribute is a key area for any consumer as this impacts the long term cost of ownership. In this study we will compare various models of MechaCars to other "comparable" vehicles. Both vehicles would have to be as close in all specs in order to have accurrate and meaningful results.


. What is the null hypothesis or alternative hypothesis?

Our null hypothesis will be that MechaCar models are having high fuel efficiency in highways against its competition. The alternate hypothesis will be that MechaCars are not having high fuel efficiency in highways against its competition. 


. What statistical test would you use to test the hypothesis? And why?


In this case we could perform a sample t-test which will give us a way to decide between a null hypothesis and an alternative hypothesis.


. What data is needed to run the statistical test?

We would take a sample data from MechaCar and its competitors to perform a t-test. In addition to basis vehichle details, we need the fuel efficiency details for each vehicle models to perform the t-test. From the output, we could compare the the p-value for Mechacar and its competitors to see if it is greater than the significance level 0.05 implying that the distribution of the data is not significantly different from normal distribtion. In other words, we can assume the normality and the fact that Mechacar has its vehicles having high fuel efficiency in highways compaired to it's competition.















