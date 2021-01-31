library(dplyr)

# Read in CSV
mechacar_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Run linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_data)

# Use summary to find p-value and r-squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_data))

# Read in CSV
psi_metrics <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# View in table
View(psi_metrics)

# Create total summary table
total_summary <- psi_metrics %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Create lot summary
lot_summary <- psi_metrics %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Test PSI of all lots against population mean
t.test(psi_metrics$PSI,mu=as.numeric(total_summary$Mean))

# Test PSI of Lot 1 against population mean
t.test(subset(psi_metrics, Manufacturing_Lot == "Lot1")$PSI, mu=as.numeric(total_summary$Mean))

# Test PSI of Lot 2 against population mean
t.test(subset(psi_metrics, Manufacturing_Lot == "Lot2")$PSI, mu=as.numeric(total_summary$Mean))

# Test PSI of Lot 3 against population mean
t.test(subset(psi_metrics, Manufacturing_Lot == "Lot3")$PSI, mu=as.numeric(total_summary$Mean))
