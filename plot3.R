require(data.table)
tab<-fread("./household_power_consumption.txt", na.strings= '?')
tebbs<-tab[grep("2007-02-01|2007-02-02", tab$Date)]par(mfrow)

png(file="plot3.png")

with(tebbs, plot(date_time,Sub_metering_1, type="l", ylab="Energy sub metering", xlab="" ))
with(tebbs, lines(date_time, Sub_metering_2, col="red"))
with(tebbs, lines(date_time, Sub_metering_3, col="blue"))

legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col 
       = c("black", "red", "blue"), lwd=2)
                                                                            
dev.off()