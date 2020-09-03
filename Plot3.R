setwd("C:/Users/alyssa.butters/Desktop/Coursera/R Programming/ExData_Plotting1")

filename <- "./household_power_consumption.txt"

power_data <- read.table(filename, header=TRUE, sep =";", dec = ".", na.strings = "?", colClasses = c(NA, NA, rep ("numeric", 7)))
head(power_data)

power_data_sub <- subset(power_data, Date %in% c("1/2/2007","2/2/2007"))

power_data_sub$Date <- as.Date(power_data_sub$Date, format = "%d/%m/%Y")
datetime <- with(power_data_sub, as.POSIXct(paste(Date, Time)))

png(file = "plot3.png", width=480, height=480)

plot(power_data_sub$Sub_metering_1~datetime, type = "l", xlab="", ylab="Energy sub metering")
lines(power_data_sub$Sub_metering_2~datetime, col="red")
lines(power_data_sub$Sub_metering_3~datetime, col="blue")
legend("topright", lty=1, lwd=2 , col=c("black", "red", "blue"), legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3"))

dev.off()