datafile <- "/users/jillbeck/household_power_consumption.txt"

Data <- read.csv(datafile, header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
Data$Date <- as.Date(Data$Date, format="%d/%m/%Y")

datasubset <- subset(Data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(Data)

datetime <- paste(as.Date(datasubset$Date), dataSubSet$Time)
datasubset$Datetime <- as.POSIXct(datetime)

hist(datasubset$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()