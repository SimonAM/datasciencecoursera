#Exploratory data analysis assignment 1
#Plot 1
setwd("C:/Users/Simon/Google Drive/R/coursera/exploratory data analysis")
epc <- read.csv("household_power_consumption.txt", stringsAsFactors = FALSE, sep=";",header = TRUE)
date_sep <- strptime(epc$Date, format="%d/%m/%Y")
epc_date <- data.frame(epc, date_sep)
epc_sep <- epc[date_sep=="2007-02-01 CET"|date_sep=="2007-02-02 CET",]
hist(epc_separate$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png, file="plot1.png")
dev.off()
