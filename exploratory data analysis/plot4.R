#Plot 4
par(mfcol=c(2,2))


#1/4 ie plot 2
epc_sep <- epc_date[date_sep=="2007-02-01 CET"|date_sep=="2007-02-02 CET",]
datetime <- as.POSIXct(paste(epc_sep$Date, epc_sep$Time),format="%d/%m/%Y %H:%M:%S")
epc_sep_date <- data.frame(epc_sep, datetime)

library(dplyr)
epc_sep_date <- mutate(epc_sep_date, Global_active_power = as.numeric(Global_active_power))
plot(epc_sep_date$datetime, epc_sep_date$Global_active_power, type="l", xlab="", ylab="Global Active Power(kilowatts)")

#2/4 ie plot 3
epc_sep <- epc_date[date_sep=="2007-02-01 CET"|date_sep=="2007-02-02 CET",]
datetime <- as.POSIXct(paste(epc_sep$Date, epc_sep$Time),format="%d/%m/%Y %H:%M:%S")
epc_sep_date <- data.frame(epc_sep, datetime)

library(dplyr)
library(tidyr)
sub_epc <- gather(epc_sep_date, sub_metering, "Energy sub metering", Sub_metering_1:Sub_metering_3)
sub_epc <- mutate(sub_epc,`Energy sub metering`=as.numeric(`Energy sub metering`))                  
plot(sub_epc$datetime, sub_epc$`Energy sub metering`, type="l", xlab="",ylab="Energy sub metering")
legend("topright", lty=c(1,1), col=c("black","red", "blue"),legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#3/4 ie new
plot(sub_epc$datetime,sub_epc$Voltage, type="l",ylab="Voltage", xlab="datetime")
#4/4 ie new
plot(sub_epc$datetime,sub_epc$Global_reactive_power, type="l",ylab="Global_Reactive_Power", xlab="datetime")

dev.copy(png, file="plot4.png")
dev.off()
