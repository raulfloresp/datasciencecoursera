pollutantmean <- function(directory, pollutant, id=1:332) {
    myfiles <- list.files(path=directory, full.names=TRUE)
    mydata <- data.frame()
    #Loop to evaluate specified files
    for(1 in id) {
        mydata <- rbind(mydata, read.csv(myfiles[i]))    
    }
    if (pollutant == "sulfate") {
        mean(mydata$sulfate, na.rm = TRUE)
    } else if (pollutant == "nitrate") {
        mean(mydata$nitrate, na.rm = TRUE)
    }
}