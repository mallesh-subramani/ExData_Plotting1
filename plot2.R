file <- "~/R wd/household_power_consumption.txt"
household <- read.table(file,sep = ";"
                        ,header = TRUE,stringsAsFactors = FALSE)
subset <- household[(household$Date=="1/2/2007")
                    |(household$Date=="2/2/2007"),]
data <- as.numeric(subset$Global_active_power)
datetime <- strptime(paste(subset$Date,subset$Time,sep = " ")
                 ,"%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(datetime,data,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()