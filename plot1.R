dset<-read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
dset$Date<-as.Date(dset$Date, format="%d/%m/%Y")
dataToUse <- dset[dset$Date >= "2007-02-01" & dset$Date <= "2007-02-02", ]
png(filename = "plot1.png", width = 480, height = 480, units = "px")
with(dataToUse, hist(Global_active_power,xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red"))
dev.off()