library(dplyr)
library(lubridate)

my_data_frame<-read.csv("../../exdata_data_household_power_consumption/household_power_consumption.txt",sep=";", header=TRUE, na.strings="?")

period_data_frame<-(filter(my_data_frame,Date=="2/2/2007" | Date=="1/2/2007"))


time<-hms(period_data_frame$Time)+dmy(period_data_frame$Date)
png(file="plot2.png")
plot(time,period_data_frame$Global_active_power, type ="l",lty=1, ylab = "Global Active Power (kilowatts)", xlab =" ")
dev.off()

