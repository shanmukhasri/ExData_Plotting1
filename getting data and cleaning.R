#reading data from that file
variable.class<-c(rep('character',2),rep('numeric',7))
power.consumption<-read.table("household_power_consumption.txt", header=TRUE,
                              sep=';', na.strings='?', colClasses=variable.class)
#reading data for 2 days
power.consumption<-power.consumption[power.consumption$Date=='1/2/2007' | power.consumption$Date=='2/2/2007',]

#col names
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
        'SubMetering1','SubMetering2','SubMetering3')

#setting col names to table
colnames(power.consumption)<-cols

#date and time format
power.consumption$DateTime<-dmy(power.consumption$Date)+hms(power.consumption$Time)
power.consumption<-power.consumption[,c(10,3:9)]

#exporting clean data
write.table(power.consumption,file='power_consumption.txt',sep='|',row.names=FALSE)