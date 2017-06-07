#loading data
source("C:/Users/shanmukhasri/Documents/GitHub/2/repair")

#opening png device
png(filename='plot2.png',width=480,height=480,units='px')

#plotting data
plot(power.consumption$DateTime,power.consumption$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

#closing png device
dev.off()