df <- read.csv("C:/RStudio/expl_data/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
sub <- subset(df,df$Date == "1/2/2007" | df$Date == "2/2/2007"  )
sub$new<-as.POSIXct(paste(as.Date(sub$Date, "%d/%m/%Y"), sub$Time))

plot(sub$new,as.numeric(sub$Global_active_power),type="l",ylab = "Global Active Power (kilowatts)",xlab="")

dev.copy(png,"plot2.png")
dev.off()