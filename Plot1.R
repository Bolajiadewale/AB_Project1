# AB_Project1
Exploratory data project1_AB
dataF <- "./data/household_power_consumption.txt"
data <- read.table(dataF, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GPA, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
