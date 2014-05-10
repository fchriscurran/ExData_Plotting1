data <- read.table("C:/Users/Chris Curran.ThinkPadCC/Documents/Data Science Cousera/Exploratory Data Analysis/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header=TRUE)

data2 <- data[as.Date(data$Date, format="%d/%m/%Y") == "2007-02-01" | as.Date(data$Date, format="%d/%m/%Y") == "2007-02-02", ]
rm(data)
hist(as.numeric(as.character(data2$Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power (kwatts)")
dev.copy(png, file="C:/Users/Chris Curran.ThinkPadCC/Documents/Data Science Cousera/Exploratory Data Analysis/exdata_data_household_power_consumption/plot1.png")
dev.off()