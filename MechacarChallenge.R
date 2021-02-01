##Deliverable 1


library(tidyverse)
MechaCar_mpg<-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)



# MPG Regression
# Using multiple linear regression, we designed a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset.
# In R, our multiple linear regression statement is as follows:
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
# Now that we have our multiple linear regression model, we need to obtain our statistical metrics using the summary() function.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))#generate summary statistics






##Deliverable 2

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep') #create summary table with multiple columns
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep') #create summary table


##Deliverable 3

# Suspension Coil Summary
# We created a summary statistics table for the suspension coil's pounds-per-inch continuous variable.

sample_table <- Suspension_Coil %>% sample_n(50) #generate 50 randomly sampled data points

t.test((sample_table$PSI),mu=mean(Suspension_Coil$PSI)) #compare sample versus population means

t.test(Suspension_Coil$PSI,mu=1500) #Overall
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI,mu=1500)#Lot1
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI,mu=1500)#Lot2
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI,mu=1500)#Lot3
