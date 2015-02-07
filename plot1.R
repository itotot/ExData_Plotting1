# Q1
all_data <- read.table("household_power_consumption.txt", header=TRUE, sep =';', stringsAsFactors=FALSE)
#
base_data_21 <- subset(all_data, all_data$Date == "1/2/2007")
base_data_22 <- subset(all_data, all_data$Date == "2/2/2007")
base_data <- rbind(base_data_21, base_data_22)
#
plot1_data <- as.numeric(base_data$Global_active_power)
hist(plot1_data, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
#
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()