#PLOT 3
#Reading data
power_data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE,na.strings = "?")
#Subsettiong on dates  [2007-02-01 and 2007-02-02]
power_data <- power_data[power_data$Date %in% c("1/2/2007","2/2/2007") ,]

#Convertion
power_data$Date<-as.Date(power_data$Date,"%d/%m/%Y")
date_time <-strptime(paste(power_data$Time,power_data$Date,sep=" "),"%H:%M:%S %Y-%m-%d")

#plot

png("plot4.png",height = 480,width = 480)


plot(date_time,power_data$Sub_metering_1,type="l",xlab = "",ylab = "Energy sub metering")
lines(date_time,power_data$Sub_metering_2,type="l",col="red")
lines(date_time,power_data$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col=c("black","red","blue"),xjust=1,yjust = 1)

dev.off()