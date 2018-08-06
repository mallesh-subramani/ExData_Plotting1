file <- "~/R wd/household_power_consumption.txt"
household <- read.table(file,sep = ";"
                      ,header = TRUE,stringsAsFactors = FALSE)
subset <- household[(household$Date=="1/2/2007")
                    |(household$Date=="2/2/2007"),]
data <- as.numeric(subset$Global_active_power)
png("plot1.png")
hist(data,col = "red",xlab = "Global Active Power (kilowatts)"
     ,ylab = "Frequency",main = "Global Active Power")
dev.off()