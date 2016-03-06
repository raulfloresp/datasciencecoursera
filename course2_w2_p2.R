complete <- function(directory, id = 1:332) {
        ## "directory" is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ##"id" is an integer vector indicating the monitor ID numbers
        ## to be used
    
        ## Returns a data frame of the form:
        ## id nobs
        ## 1 117
        ## 2 1041
        ## ...
        ## where "id" is the monitor ID number and "nobs" is the
        ## number of complete cases
    myfiles2 <- list.files(path=directory, full.names=TRUE)
    mydata2 <- data.frame()
    cases2 <- data.frame()
    nobs <- data.frame();
    ##Loop to evaluate specified data
    for(i in id) {
        mydata2 <- (read.csv(myfiles2[i], header = TRUE))
        nobs <- sum(complete.cases(mydata2))
        cases2 <- rbind(cases2, data.frame(i, nobs))
    }
    cases2
}
