#Function to plot the frequency historgram of Global Active Power
#Input  - a vector of the global active power values
#Output - frequency historgram of global active power in kilowatts

plot1 <- function(d) {

  d<-as.numeric(d)
  hist(d,freq=TRUE,xlab="Global Active Power (kilowatts)",col="red", main="Global Active Power")

}