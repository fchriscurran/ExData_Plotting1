data <- read.table("C:/Users/Chris Curran.ThinkPadCC/Documents/Data Science Cousera/Exploratory Data Analysis/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header=TRUE)

data2 <- data[as.Date(data$Date, format="%d/%m/%Y") == "2007-02-01" | as.Date(data$Date, format="%d/%m/%Y") == "2007-02-02", ]
rm(data)

data2 <- data2[order(as.Date(data2$Date, format="%d/%m/%Y"))]

data2$obsnum <- as.integer(seq(1:nrow(data2)))

plot(data2$obsnum, as.numeric(as.character(data2$Global_active_power)), type="l", main = "", ylab = "Global Active Power (kilowatts)", xlab = "", xaxt = "n")
axis(side = 1, at = c(1, 1500, 2800), labels = c("Thu", "Fri", "Sat"))
dev.copy(png, file="C:/Users/Chris Curran.ThinkPadCC/Documents/Data Science Cousera/Exploratory Data Analysis/exdata_data_household_power_consumption/plot2.png")
dev.off()