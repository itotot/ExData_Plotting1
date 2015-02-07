# Q2
all_data <- read.table("household_power_consumption.txt", header=TRUE, sep =';', stringsAsFactors=FALSE)
#
base_data_21 <- subset(all_data, all_data$Date == "1/2/2007")
base_data_22 <- subset(all_data, all_data$Date == "2/2/2007")
base_data <- rbind(base_data_21, base_data_22)
#
xdata <- strptime(paste(base_data$Date, base_data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot2_data <- as.numeric(base_data$Global_active_power)
plot(xdata, plot2_data, type = "l", xlab = "", ylab = "Global Active Power (Kilowatts)")
#
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()