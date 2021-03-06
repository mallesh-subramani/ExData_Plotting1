file <- "~/R wd/household_power_consumption.txt"
household <- read.table(file,sep = ";"
                        ,header = TRUE,stringsAsFactors = FALSE)
subset <- household[(household$Date=="1/2/2007")
                    |(household$Date=="2/2/2007"),]
datetime <- strptime(paste(subset$Date,subset$Time,sep = " ")
                     ,"%d/%m/%Y %H:%M:%S")
sub1 <- as.numeric(subset$Sub_metering_1)
sub2 <- as.numeric(subset$Sub_metering_2)
sub3 <- as.numeric(subset$Sub_metering_3)
png("plot3.png")
plot(datetime,sub1,type = "n",,xlab=" ",ylab="Energy sub metering")
lines(datetime,sub1,type = "l",col="black")
lines(datetime,sub2,type = "l",col="red")
lines(datetime,sub3,type = "l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2"
                    ,"Sub_metering_3"),lty = 1,lwd = 2
       ,col=c("black","red","blue"))
dev.off()

