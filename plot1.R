library(dplyr)
library(lubridate)

my_data_frame<-read.csv("../../exdata_data_household_power_consumption/household_power_consumption.txt",sep=";", header=TRUE, na.strings="?")

period_data_frame<-(filter(my_data_frame,Date=="2/2/2007" | Date=="1/2/2007"))

png(file="plot1.png")
hist(period_data_frame$Global_active_power,xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
dev.off()
