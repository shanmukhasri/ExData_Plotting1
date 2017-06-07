#loading data
source("C:/Users/shanmukhasri/Documents/GitHub/2/repair")


#opening png device eith 480x480

png(filename='plot1.png',width=480,height=480,units='px')

#plotting histigram

hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

#closing device
dev.off()