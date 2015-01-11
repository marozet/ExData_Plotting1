library(data.table)
mydata<-fread("household_power_consumption.txt",skip=66637,nrows=2880) # Read just the interesting data from 2007-02-01 to 2007-02-02
mydata[,Date:=as.POSIXct(strptime(paste(mydata$V1,mydata$V2), format="%d/%m/%Y %H:%M:%S"))] #Append Date variable
plot(mydata$Date,mydata$V3,ylab="Global Active Power (kilowatts)", xlab="",pch=".")
lines(mydata$Date,mydata$V3)
dev.copy(png,file="plot2.png")
dev.off()