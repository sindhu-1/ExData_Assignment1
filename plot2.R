#PLOT 2

#Reading data
power_data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE,na.strings = "?")
#Subsettiong on dates  [2007-02-01 and 2007-02-02]
power_data <- power_data[power_data$Date %in% c("1/2/2007","2/2/2007") ,]
#Convertion
power_data$Date<-as.Date(power_data$Date,"%d/%m/%Y")
date_time <-strptime(paste(power_data$Time,power_data$Date,sep=" "),"%H:%M:%S %Y-%m-%d")

#plot

png("plot2.png",height = 480,width = 480)

plot(date_time,power_data$Global_active_power,type="l",ylab="Global Active Power(killowatts)",xlab="")

dev.off()