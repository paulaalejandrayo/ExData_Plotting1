library(dplyr)
library(lubridate)

my_data_frame<-read.csv("../../exdata_data_household_power_consumption/household_power_consumption.txt",sep=";", header=TRUE, na.strings="?")

period_data_frame<-(filter(my_data_frame,Date=="2/2/2007" | Date=="1/2/2007"))

time<-hms(period_data_frame$Time)+dmy(period_data_frame$Date)

png(file="plot3.png")
plot(time,period_data_frame$Sub_metering_1, type ="l",lty=1, xlab =" ", ylab = "Energy sob metering", col="black")
lines(time,period_data_frame$Sub_metering_2, type ="l",lty=1, col="red")
lines(time,period_data_frame$Sub_metering_3, type ="l",lty=1, col="blue")
legend("topright", lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
