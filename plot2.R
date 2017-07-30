# Creating plot 2
# Line chart of "Global Active Power" by days of the week
# Download of the data, reading it and building the basic data set
# for plotting, is done in "png1.R". Please run that script first.

dev.off()
plot(data$full_date, as.numeric(as.character(data$Global_active_power)), 
     type = "l", xlab = "", ylab = "Global Active Power (Kilowatts)")

#Copying the plot to the png device

dev.copy(png, filename = "png2.png", width = 480, height = 480, units = "px")
dev.off()
