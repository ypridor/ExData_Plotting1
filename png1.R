# Creating plot 1
#Histogram of "Global Active Power"

# Download, Unzip and read file

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip")
unzip("household_power_consumption.zip")
raw_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

# Subset the data to relevant days only

relevant_days <- subset(raw_data, Date == "1/2/2007" | Date == "2/2/2007")

# Create a date and time variable in Date format

Date_Time <- paste( relevant_days$Date, relevant_days$Time)
full_date <- strptime(Date_Time, format = "%d/%m/%Y %H:%M:%S")
data <- cbind(full_date, relevant_days)

# Create histogram on screen device

hist(as.numeric(as.character(data$Global_active_power)),
     col = "red", xlab = "Global Active Power (Kilowatts)", 
     ylab = "Frequency", main = "Global Active Power")

#Copying the plot to the png device

dev.copy(png, filename = "png1.png", width = 480, height = 480, units = "px")
dev.off()