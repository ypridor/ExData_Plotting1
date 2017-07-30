# Creating plot 4
# 4 plots in one display
# Download of the data, reading it and building the basic data set
# for plotting, is done in "png1.R". Please run that script first.

# Creating the basic layout of 2 by 2

par(mfrow = c(2,2))

# Inserting the 4 plots, one by one

plot(data$full_date, as.numeric(as.character(data$Global_active_power)), type = "l", xlab = "", ylab = "Global Active Power (Kilowatts)")
plot(data$full_date, as.numeric(as.character(data$Voltage)), type = "l", xlab = "datetime", ylab = "Voltage")
with(data, plot(full_date, as.numeric(as.character(Sub_metering_1)), type = "n", xlab = "", ylab = "Energy sub metering", yaxp = c(0,40,8)))
lines(full_date, as.numeric(as.character(data$Sub_metering_1)))
lines(full_date, as.numeric(as.character(data$Sub_metering_2)), col = "red")
lines(full_date, as.numeric(as.character(data$Sub_metering_3)), col = "blue")
legend("topright", pch = "__", col = c("black", "red", "blue"),legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(data$full_date, as.numeric(as.character(data$Global_reactive_power)), type = "l", xlab = "datetime", ylab = "Global_Reactive_Power")

#Copying the plot to the png device

dev.copy(png, filename = "png4.png", width = 480, height = 480, units = "px")
dev.off()