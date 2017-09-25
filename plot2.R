require(data.table)
tab<-fread("./household_power_consumption.txt", na.strings= '?')
tebbs<-tab[grep("2007-02-01|2007-02-02", tab$Date)]

 png(file="plot2.png")
 with(tebbs, plot(date_time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
 dev.off()
