#PLOT 1

#Reading data
power_data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE,na.strings = "?")
#Subsettiong on dates  [2007-02-01 and 2007-02-02]
power_data <- power_data[power_data$Date %in% c("1/2/2007","2/2/2007") ,]

#as.Date(power_data$Date,"%d/%m/%Y")
#strptime(power_data$Time[2],"%H:%M:%S")

#plot

png("plot1.png",height = 480,width = 480)

hist(power_data$Global_active_power,col= "red",xlab="Global Active Power(killowatts)",
     main = "Global Active Power")

dev.off()