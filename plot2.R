setwd("C:\\WorkDir\\Study\\Coursera\\ExploratoryAnalysis\\week1\\")
hpc<-read.table(".//data//HPC.txt",header=TRUE,sep=";",stringsAsFactors=FALSE,na.strings="?")
nd<-subset(hpc,Date=="1/2/2007" | Date=="2/2/2007")
nd$Date<-strptime(paste(nd$Date,nd$Time),"%d/%m/%Y %H:%M:%S")


png(file="plot2.png", width = 480, height = 480, units = "px")
with(nd,plot(Date,Global_active_power,type="l", ylab="Global Active Power (kilowatts)",xlab=""))
dev.off()