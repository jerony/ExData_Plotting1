############ Third Plot ############
Data2$Sub_metering_1 <- as.numeric(as.character(Data2$Sub_metering_1))
Data2$Sub_metering_2 <- as.numeric(as.character(Data2$Sub_metering_2))
Data2$Sub_metering_3 <- as.numeric(as.character(Data2$Sub_metering_3))

with(Data2,plot(DateTime,Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering"))
with(Data2,lines(DateTime,Sub_metering_2,col = "red"))
with(Data2,lines(DateTime,Sub_metering_3,col = "blue"))

legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col = c("black","red","blue"))

##Save to PNG file
png(file = "plot3.png")
with(Data2,plot(DateTime,Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering"))
with(Data2,lines(DateTime,Sub_metering_2,col = "red"))
with(Data2,lines(DateTime,Sub_metering_3,col = "blue"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col = c("black","red","blue"))
dev.off()