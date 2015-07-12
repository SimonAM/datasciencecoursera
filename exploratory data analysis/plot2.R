#plot 2
setwd("C:/Users/Simon/Google Drive/R/coursera/exploratory data analysis")
epc <- read.csv("household_power_consumption.txt", stringsAsFactors = FALSE, sep=";",header = TRUE)
date_sep <- strptime(epc$Date, format="%d/%m/%Y")
epc_date <- data.frame(epc, date_sep)
epc_sep <- epc_date[date_sep=="2007-02-01 CET"|date_sep=="2007-02-02 CET",]
datetime <- as.POSIXct(paste(epc_sep$Date, epc_sep$Time),format="%d/%m/%Y %H:%M:%S")
epc_sep_date <- data.frame(epc_sep, datetime)

library(dplyr)
epc_sep_date <- mutate(epc_sep_date, Global_active_power = as.numeric(Global_active_power))
plot(epc_sep_date$datetime, epc_sep_date$Global_active_power, type="l", xlab="", ylab="Global Active Power(kilowatts)")
dev.copy(png, file="plot2.png")
dev.off()
