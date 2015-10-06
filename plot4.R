#Function to plot global active power over time (top left), sub_metering over time (bottom left), 
#voltage over time (top right), and global reactive power over time (bottom right)
#Input  - the entire data table
#Output - plots in 4 quadrants

plot4 <- function(dt_sub) {
  
  #Top left
  plot2(dt.sub$Time, dt.sub$Global_active_power)
  
  #Bottom left
  plot(dt.sub$Time,as.numeric(dt.sub$Voltage),xlab="datetime",ylab="Voltage",type="l")
  
  #Top right
  plot3(dt.sub$Time, dt.sub$Sub_metering_1, dt.sub$Sub_metering_2, dt.sub$Sub_metering_3)
  
  #Bottom right
  plot(dt.sub$Time,as.numeric(dt.sub$Global_reactive_power),xlab="datetime",ylab="Global_reactive_power",type="l")
  
}