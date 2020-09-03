setwd("C:/Users/alyssa.butters/Desktop/Coursera/R Programming/ExData_Plotting1")

filename <- "./household_power_consumption.txt"

power_data <- read.table(filename, header=TRUE, sep =";", dec = ".", na.strings = "?", colClasses = c(NA, NA, rep ("numeric", 7)))
head(power_data)

power_data_sub <- subset(power_data, Date %in% c("1/2/2007","2/2/2007"))

png(file = "plot1.png", width=480, height=480)

hist(power_data_sub$Global_active_power, main = "Global Active Power", col="red", xlab= "Global Active Power (kilowatts)")

dev.off()