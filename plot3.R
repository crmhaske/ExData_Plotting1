#Function to plot the change in Sub_metering_1, Sub_metering_2 and Sub_metering_3 over time
#Input  - a vector of time data, a vector of each of the Sub_metering columns, and a value indicating whether
#         the plot should be created as plot3 ("p3": legend box) or as plot4 ("p4": no legend box)
#Output - line plot of Sub_metering_(1,2, and 3) over time

plot3 <- function(x,y1,y2,y3,type="p4") {
  
  plot(x,y1,xlab="", ylab="Energy sub metering", main="",type="l",col="black")
  lines(x,y2,col="red")
  lines(x,y3,col="blue")
  
  if (type=="p3") {
    legend("topright", col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)
  } else {
    legend("topright", col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,bty="n")
  }
}