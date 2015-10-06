#Function to plot the change in Global Active Power over time
#Input  - a vector of time data, a vector of the global active power values, and the plot type ("p2": (kilowatts) in ylab)
#Output - line plot of global active power over time

plot2 <- function(x,y,type="p4") {
 
  y<-as.numeric(y)
  
  if (type=="p2") {
    plot(x,y,xlab="", ylab="Global Active Power (kilowatts)", main="",type="l")
  } else {
    plot(x,y,xlab="", ylab="Global Active Power", main="",type="l")
  }

}