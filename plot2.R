dset<-read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
dset$Date<-as.Date(dset$Date, format="%d/%m/%Y")
dataToUse <- dset[dset$Date >= "2007-02-01" & dset$Date <= "2007-02-02", ]
dataToUse$dtime <- paste(dataToUse$Date, dataToUse$Time)
dataToUse$dtime <- strptime(dataToUse$dtime, format="%Y-%m-%d %T")
png(filename = "plot2.png", width = 480, height = 480, units = "px")
with(dataToUse,plot(dtime,Global_active_power, type="l",ylab="Global Active Power (kilowatts)",xlab=""))
dev.off()