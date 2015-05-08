df <- read.csv("C:/RStudio/expl_data/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
sub <- subset(df,df$Date == "1/2/2007" | df$Date == "2/2/2007"  )
sub$new<-as.POSIXct(paste(as.Date(sub$Date, "%d/%m/%Y"), sub$Time))

plot(sub$new,as.numeric(sub$Sub_metering_1),type="l",ylab = "Energy sub metering",xlab="")
lines(sub$new,as.numeric(sub$Sub_metering_2),type="l" ,col="red")
lines(sub$new,as.numeric(sub$Sub_metering_3),type="l",col="blue")


legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black", "red","blue"), lty = 1)


dev.copy(png,"plot3.png")
dev.off()