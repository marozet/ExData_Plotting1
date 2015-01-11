library(data.table)
mydata<-fread("household_power_consumption.txt",skip=66637,nrows=2880) # Read just the interesting data from 2007-02-01 to 2007-02-02
hist(mydata$V3,col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png,file="plot1.png")
dev.off()