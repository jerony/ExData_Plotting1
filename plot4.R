############ Fourth Plot ############

par(mfrow = c(2,2))

##First Panel
with(Data2,plot(DateTime,Global_active_power,type = "n",xlab ="",ylab = "Global Active Power"))
with(Data2,lines(DateTime,Global_active_power))

##Second Panel
with(Data2,plot(DateTime,as.numeric(as.character(Voltage)),type = "l",ylab = "Voltage",xlab = "datetime"))


##Third Panel
with(Data2,plot(DateTime,Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering"))
with(Data2,lines(DateTime,Sub_metering_2,col = "red"))
with(Data2,lines(DateTime,Sub_metering_3,col = "blue"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col = c("black","red","blue"),bty = "n")

##Fourth Panel
with(Data2,plot(DateTime,as.numeric(as.character(Global_reactive_power)),type = "l",xlab = "datetime",ylab = "Global_reactive_power"))

##Save to PNG file
png(file = "plot4.png")
par(mfrow = c(2,2))
with(Data2,plot(DateTime,Global_active_power,type = "n",xlab ="",ylab = "Global Active Power"))
with(Data2,lines(DateTime,Global_active_power))
with(Data2,plot(DateTime,as.numeric(as.character(Voltage)),type = "l",ylab = "Voltage",xlab = "datetime"))
with(Data2,plot(DateTime,Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering"))
with(Data2,lines(DateTime,Sub_metering_2,col = "red"))
with(Data2,lines(DateTime,Sub_metering_3,col = "blue"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col = c("black","red","blue"),bty = "n")
with(Data2,plot(DateTime,as.numeric(as.character(Global_reactive_power)),type = "l",xlab = "datetime",ylab = "Global_reactive_power"))
dev.off()