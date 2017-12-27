############ Second Plot ############
##format date/time
DateTime <- sapply(1:nrow(Data2),function(i) {
  paste(c(as.character(Data2$Date[i]),as.character(Data2$Time[i])),sep = " ",collapse = " ")
} )

DateTime <- parse_date_time(DateTime,orders = "Ymd HMS") ##requires lubridate package

Data2$DateTime <- DateTime

##Create Plot
with(Data2,plot(DateTime,Global_active_power,type = "n",xlab ="",ylab = "Global Active Power (kilowatts)"))
with(Data2,lines(DateTime,Global_active_power))

##Save to PNG file
png(file = "plot2.png")
with(Data2,plot(DateTime,Global_active_power,type = "n",xlab ="",ylab = "Global Active Power (kilowatts)"))
with(Data2,lines(DateTime,Global_active_power))
dev.off()