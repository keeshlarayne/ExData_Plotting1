require(data.table)
tab<-fread("./household_power_consumption.txt", na.strings= '?')
tebbs<-tab[grep("2007-02-01|2007-02-02", tab$Date)]par(mfrow)

png(file="plot4.png")
par(mfrow= c(2,2))

#1
with(tebbs, plot(date_time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
#2
with(tebbs, plot(date_time, Voltage, type="l", xlab="datetime", ylab="Voltage"))
 
#3
with(tebbs, plot(date_time,Sub_metering_1, type="l", ylab="Energy sub metering", xlab="" ))
with(tebbs, lines(date_time, Sub_metering_2, col="red"))
with(tebbs, lines(date_time, Sub_metering_3, col="blue"))
legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col = 
         c("black", "red", "blue"), lwd=2, bty="n")
#4
with(tebbs, plot(date_time, Global_reactive_power, type="l", xlab="datetime", ylab="Voltage"))

dev.off()