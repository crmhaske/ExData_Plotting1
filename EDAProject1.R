### Set to Git repository directory ###
setwd("C:/Users/Christie/Documents/Coursera/ExData_Plotting1/")

#Directory containing the data
data.dir<-"C:/Users/Christie/Documents/Coursera/exdata-data-household_power_consumption/"

#Read in the data using fread from the data.table package
library(data.table)
dt<-fread(paste(data.dir,"household_power_consumption.txt",sep=""),sep=";",header=TRUE,colClasses=rep("character",9))

#Set date and time column data types
library(lubridate)
dt$Date<-as.Date(dt$Date,format="%d/%m/%Y")
dt$Time<-fast_strptime(dt$Time, format="%H:%M:%S", tz="UTC")

#Keep only dates between 2007-02-01 and 2007-02-02
dt.sub<-subset(dt,dt$Date>= as.Date("2007-02-01") & dt$Date<= as.Date("2007-02-02"))
year(dt.sub$Time)<-year(dt.sub$Date)
month(dt.sub$Time)<-month(dt.sub$Date)
day(dt.sub$Time)<-day(dt.sub$Date)

#Create and save plot 1
source("plot1.R")
png(file="plot1.png",width=480,height=480)
plot1(dt.sub$Global_active_power)
dev.off()

#Create and save plot 2
png(file="plot2.png",width=480,height=480)
source("plot2.R")
plot2(dt.sub$Time, dt.sub$Global_active_power,"p2")
dev.off()

#Create and save plot 3
png(file="plot3.png",width=480,height=480)
source("plot3.R")
plot3(dt.sub$Time, dt.sub$Sub_metering_1, dt.sub$Sub_metering_2, dt.sub$Sub_metering_3,"p3")
dev.off()

#Create and save plot 4
png(file="plot4.png",width=480,height=480)
source("plot4.R")
par(mfrow=c(2,2))
plot4(dt.sub)
dev.off()