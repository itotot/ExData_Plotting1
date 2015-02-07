# Q3
all_data <- read.table("household_power_consumption.txt", header=TRUE, sep =';', stringsAsFactors=FALSE)
#
base_data_21 <- subset(all_data, all_data$Date == "1/2/2007")
base_data_22 <- subset(all_data, all_data$Date == "2/2/2007")
base_data <- rbind(base_data_21, base_data_22)
#
xdata <- strptime(paste(base_data$Date, base_data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot3_data1 <- as.numeric(base_data$Sub_metering_1)
plot3_data2 <- as.numeric(base_data$Sub_metering_2)
plot3_data3 <- as.numeric(base_data$Sub_metering_3)
plot(xdata, plot3_data1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(xdata, plot3_data2, type = "l", col = "red")
lines(xdata, plot3_data3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 1, col = c("black", "red", "blue"))
#
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()