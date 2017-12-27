
##Import Data
Data <- read.table(paste(c(getwd(),"household_power_consumption.txt"),sep = "/",collapse = "/"),skipNul = TRUE,sep = ";",skip = 1)
Headers <- strsplit(readLines(paste(c(getwd(),"household_power_consumption.txt"),sep = "/",collapse = "/"),n = 1),split = ";")
Headers <- Headers[[1]]
colnames(Data) <- Headers
Data$Date <- as.Date(strptime(as.character(Data$Date),format = "%d/%m/%Y"))

Data2 <- subset(Data,year(Date)==2007&month(Date)==02&(mday(Date)==01|mday(Date)==02))

############ First Plot ############
Data2$Global_active_power <- as.numeric(as.character(Data2$Global_active_power))
hist(Data2$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",col = "red")

##Save to PNG file
png(file = "plot1.png")
hist(Data2$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",col = "red")
dev.off()



