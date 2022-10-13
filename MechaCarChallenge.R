library(dplyr)

#Deliverable 1
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #generate summary statistics

#Deliverable 2
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns


#Deliverable 3
t.test(lot_summary$Mean,mu=mean(SuspensionCoil$PSI))

t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot1")$PSI,mu=mean(SuspensionCoil$PSI))
t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot2")$PSI,mu=mean(SuspensionCoil$PSI))
t.test(subset(SuspensionCoil, Manufacturing_Lot=="Lot3")$PSI,mu=mean(SuspensionCoil$PSI))

t.test(SuspensionCoil$PSI,mu=mean(SuspensionCoil$PSI))
