#plot 3
#plot 2
setwd("C:/Users/Simon/Google Drive/R/coursera/exploratory data analysis")
epc <- read.csv("household_power_consumption.txt", stringsAsFactors = FALSE, sep=";",header = TRUE)
epc_sep <- epc_date[date_sep=="2007-02-01 CET"|date_sep=="2007-02-02 CET",]
datetime <- as.POSIXct(paste(epc_sep$Date, epc_sep$Time),format="%d/%m/%Y %H:%M:%S")
epc_sep_date <- data.frame(epc_sep, datetime)

library(dplyr)
library(tidyr)
sub_epc <- gather(epc_sep_date, sub_metering, "Energy sub metering", Sub_metering_1:Sub_metering_3)
sub_epc <- mutate(sub_epc,`Energy sub metering`=as.numeric(`Energy sub metering`))                  
plot(sub_epc$datetime, sub_epc$`Energy sub metering`, type="l", xlab="",ylab="Energy sub metering")
legend("topright", lty=c(1,1), col=c("black","red", "blue"),legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png")
dev.off()
                  