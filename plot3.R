setwd("C:\\WorkDir\\Study\\Coursera\\ExploratoryAnalysis\\week1\\")
hpc<-read.table(".//data//HPC.txt",header=TRUE,sep=";",stringsAsFactors=FALSE,na.strings="?")
nd<-subset(hpc,Date=="1/2/2007" | Date=="2/2/2007")
nd$Date<-strptime(paste(nd$Date,nd$Time),"%d/%m/%Y %H:%M:%S")

png(file="plot3.png", width = 480, height = 480, units = "px")
with(nd,plot(Date,Sub_metering_1,type="l",col="black",ylab="Energy sum metering",xlab=""))
lines(nd$Date,nd$Sub_metering_2,col="red")
lines(nd$Date,nd$Sub_metering_3,col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_1","Sub_metering_1"), lty=c(1,1,1),lwd=c(1,1,1),
       col=c("black","red","blue"))
dev.off()