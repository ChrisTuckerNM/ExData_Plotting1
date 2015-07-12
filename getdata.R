##Retreive the data needed for each plot, did not want to copy and paste this..
getdata <- function(){

    ## retreive the data needed for the plots
    library(data.table)
    directory <- "D:\\_coursera\\ExData_Plotting1"
    
    setwd(directory)
    
    zipfile <-  paste(directory, "ExData.zip" ,sep = "\\")
    setwd(directory)
    
    url <-
        "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    
    zippedfile <- "household_power_consumption.txt"
    
    if(!file.exists(zipfile)){
        download.file(url,destfile = zipfile ,method="auto")
        unzip(zipfile = zipfile)
    }
    
    
    DT <- fread(
        paste(directory,zippedfile,sep = "\\")
        ,sep = ";"
        ,na.strings = "?"
        ,stringsAsFactors = FALSE
        ,header = TRUE
        ,colClasses = "character"
        ,nrows = 69519 ## Only need up to these rows
    )
    
    
    
    numericnames <-
        c(
            "Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"
        )
    
    ## re-type columns
    for (col in numericnames) {
        set(DT,j = col,value = as.numeric(DT[[col]]))
    }
    
    set(DT,j="Date",value = as.POSIXct(paste(DT$Date,DT$Time,sep = " "), format="%e/%m/%Y %T"))
    
    DT <- DT[DT$Date > "2007-02-01 00:00:00" & DT$Date <="2007-02-02 23:59:59",]
    DT
}