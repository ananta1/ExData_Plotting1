
plot1<-function(){

  
  #Create the table 'data' and create dataframe 'df'
  data<-read.table("household_power_consumption.txt", sep=";")  
  df<-as.data.frame(data)
  
  #Create the subset for the dates 2/1/2007 and 2/2/2007  
  data1<-subset(df,as.character(df$Date) == "2/1/2007" | as.character(df$Date) == "2/2/2007" )

  #Convert to numeric array for  'globalActivePower' 
  globalActivePower<-as.character(data1$Global_active_power)
  globalActivePower<-as.numeric(globalActivePower)
  
  #plot histogram and copy to plot1.png from the device
  par(mfrow = c(1, 1), mar = c(4, 4, 2, 1))
  hist(globalActivePow, col="Red", main="Global Active Power",xlab="Global Active Power(kilowatts)")
  dev.copy(png, file = "plot1.png")
  dev.off()  # close the device
  
}