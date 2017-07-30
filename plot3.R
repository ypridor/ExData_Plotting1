# Creating plot 3
# Line chart of the 3 Sub_metering variables by days of the week
# Download of the data, reading it and building the basic data set
# for plotting, is done in "png1.R". Please run that script first.

# Creating the basic and empty plot

with(data, plot(full_date, as.numeric(as.character(Sub_metering_1)), 
                type = "n", xlab = "", ylab = "Energy sub metering", 
                yaxp = c(0,40,8)))

# Adding the 3 variable lines with colors and legend

lines(full_date, as.numeric(as.character(data$Sub_metering_1)))
lines(full_date, as.numeric(as.character(data$Sub_metering_2)), col = "red")
lines(full_date, as.numeric(as.character(data$Sub_metering_3)), col = "blue")
legend("topright", pch = "__", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Copying the plot to the png device

dev.copy(png, filename = "png3.png", width = 480, height = 480, units = "px")
dev.off()