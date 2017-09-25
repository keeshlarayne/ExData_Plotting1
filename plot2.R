require(data.table)
require(lubridate)
#read data 
tab<-fread("./household_power_consumption.txt", na.strings= '?')
#create date/time column
tab$date_time<-dmy_hms(paste(tab$Date, tab$Time))
#subset tab for days required
tebbs<-tab[grep("2007-02-01|2007-02-02", tab$Date)]
 
 png(file="plot2.png")
 with(tebbs, plot(date_time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
 dev.off()
