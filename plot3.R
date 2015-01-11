library(data.table)
mydata<-fread("household_power_consumption.txt",skip=66637,nrows=2880) # Read just the interesting data from 2007-02-01 to 2007-02-02
mydata[,Date:=as.POSIXct(strptime(paste(mydata$V1,mydata$V2), format="%d/%m/%Y %H:%M:%S"))] #Append Date variable
png(file="plot3.png")
plot(mydata$Date,mydata$V7,ylab="Energy sub metering", xlab="",type="n")
lines(mydata$Date,mydata$V7)
lines(mydata$Date,mydata$V8,col="red")
lines(mydata$Date,mydata$V9,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=1)
dev.off()