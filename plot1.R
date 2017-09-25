require(data.table)
#read data 
tab<-fread("./household_power_consumption.txt", na.strings= '?')
#create date/time column
tab$date_time<-dmy_hms(paste(tab$Date, tab$Time))
#subset tab for days required
tebbs<-tab[grep("2007-02-01|2007-02-02", tab$Date)]
 

png(file="plot1.png")
with(tebbs, hist(Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col= "red"))
dev.off()
