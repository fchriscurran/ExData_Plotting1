data <- read.table("C:/Users/Chris Curran.ThinkPadCC/Documents/Data Science Cousera/Exploratory Data Analysis/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header=TRUE)

data2 <- data[as.Date(data$Date, format="%d/%m/%Y") == "2007-02-01" | as.Date(data$Date, format="%d/%m/%Y") == "2007-02-02", ]
rm(data)

data2 <- data2[order(as.Date(data2$Date, format="%d/%m/%Y"))]

data2$obsnum <- as.integer(seq(1:nrow(data2)))

attach(mtplots)
par(mfrow=c(2,2))

plot(data2$obsnum, as.numeric(as.character(data2$Global_active_power)), type="l", main = "", ylab = "Global Active Power", xlab = "", xaxt = "n")
axis(side = 1, at = c(1, 1500, 2800), labels = c("Thu", "Fri", "Sat"))
plot(data2$obsnum, as.numeric(as.character(data2$Voltage)), type="l", main = "", ylab = "Voltage", xlab = "datetime", xaxt = "n")
axis(side = 1, at = c(1, 1500, 2800), labels = c("Thu", "Fri", "Sat"))


plot(data2$obsnum, as.numeric(as.character(data2$Sub_metering_1)), type="l", main = "", ylab = "Energy sub metering", xlab = "", xaxt = "n")
lines(data2$obsnum, as.numeric(as.character(data2$Sub_metering_2)), type="l", main = "", ylab = "Energy sub metering", xlab = "", xaxt = "n", col="red")
lines(data2$obsnum, as.numeric(as.character(data2$Sub_metering_3)), type="l", main = "", ylab = "Energy sub metering", xlab = "", xaxt = "n", col="blue")
axis(side = 1, at = c(1, 1500, 2800), labels = c("Thu", "Fri", "Sat"))

plot(data2$obsnum, as.numeric(as.character(data2$Global_reactive_power)), type="l", main = "", ylab = "Global_reactive_power", xlab = "datetime", xaxt = "n")
axis(side = 1, at = c(1, 1500, 2800), labels = c("Thu", "Fri", "Sat"))




dev.copy(png, file="C:/Users/Chris Curran.ThinkPadCC/Documents/Data Science Cousera/Exploratory Data Analysis/exdata_data_household_power_consumption/plot4.png")
dev.off()