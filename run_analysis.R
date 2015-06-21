run_analysis <- function() {

    ##################################################################
    # Author: Billy Yeh 2015-06-22
    # This program will analyze the data collected from the
    # Human Activity Recognition Using Smartphones Dataset Version 1
    ##################################################################
    
    # This program will run correctly once you downlaod the zip file from
    #
    # and unzip it into your working directory in R
    
    # read the data in
    
    
    # since it is a fixed width file and each field is 16 wide, we will create a repeating vector
    
    widths <- rep(c(16), times=561)
    
    testDStemp <- read.fwf("UCI HAR Dataset/test/x_test.txt", widths=widths)
    trainDStemp <- read.fwf("UCI HAR Dataset/train/x_train.txt", widths=widths)
    
    # read the activity files
    testDSactivity <- read.fwf("UCI HAR Dataset/test/y_test.txt", widths=1)
    trainDSactivity <- read.file("UCI HAR Dataset/train/y_train.txt", widths=1)
    
    names(testDSactivity) <- c("activity")
    names(trainDSactivity) <- c("activity")
    
    # add the activity column to the data
    testDS <- cbind(testDStemp,testDSactivity)
    trainDS <- cbind(trainDStemp,trainDSactivity)
    # create a temporary field label for each variable
    # it clobbers the activity column name above but it's okay
    ctr <- rep(c(1:562), by=1)
    names(testDS) <- ctr
    names(trainDS) <- ctr
    
    
    # now merge the 2 together to create 1
    mergeDS <- rbind(testDS,trainDS)
    
    # extract only the column of interest mean and std
    mergeDS_meanandstd <- mergeDS[,c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,294,295,296,345,346,347,348,349,350,373,374,375,424,425,426,427,428,429,452,453,454,503,504,513,516,517,526,529,530,539,542,543,552,562)]
    
    # rename the new DS with meaningful field names
        
    # create a vector with field names
    mergenames<-c("tBodyAcc_mean_X","tBodyAcc_mean_Y","tBodyAcc_mean_Z","tBodyAcc_std_X","tBodyAcc_std_Y","tBodyAcc_std_Z","tGravityAcc_mean_X","tGravityAcc_mean_Y","tGravityAcc_mean_Z","tGravityAcc_std_X","tGravityAcc_std_Y","tGravityAcc_std_Z","tBodyAccJerk_mean_X","tBodyAccJerk_mean_Y","tBodyAccJerk_mean_Z","tBodyAccJerk_std_X","tBodyAccJerk_std_Y","tBodyAccJerk_std_Z","tBodyGyro_mean_X","tBodyGyro_mean_Y","tBodyGyro_mean_Z","tBodyGyro_std_X","tBodyGyro_std_Y","tBodyGyro_std_Z","tBodyGyroJerk_mean_X","tBodyGyroJerk_mean_Y","tBodyGyroJerk_mean_Z","tBodyGyroJerk_std_X","tBodyGyroJerk_std_Y","tBodyGyroJerk_std_Z","tBodyAccMag_mean","tBodyAccMag_std","tGravityAccMag_mean","tGravityAccMag_std","tBodyAccJerkMag_mean","tBodyAccJerkMag_std","tBodyGyroMag_mean","tBodyGyroMag_std","tBodyGyroJerkMag_mean","tBodyGyroJerkMag_std","fBodyAcc_mean_X","fBodyAcc_mean_Y","fBodyAcc_mean_Z","fBodyAcc_std_X","fBodyAcc_std_Y","fBodyAcc_std_Z","fBodyAcc_meanFreq_X","fBodyAcc_meanFreq_Y","fBodyAcc_meanFreq_Z","fBodyAccJerk_mean_X","fBodyAccJerk_mean_Y","fBodyAccJerk_mean_Z","fBodyAccJerk_std_X","fBodyAccJerk_std_Y","fBodyAccJerk_std_Z","fBodyAccJerk_meanFreq_X","fBodyAccJerk_meanFreq_Y","fBodyAccJerk_meanFreq_Z","fBodyGyro_mean_X","fBodyGyro_mean_Y","fBodyGyro_mean_Z","fBodyGyro_std_X","fBodyGyro_std_Y","fBodyGyro_std_Z","fBodyGyro_meanFreq_X","453_fBodyGyro_meanFreq_Y","fBodyGyro_meanFreq_Z","fBodyAccMag_mean","fBodyAccMag_std","fBodyAccMag_meanFreq","fBodyBodyAccJerkMag_mean","fBodyBodyAccJerkMag_std","fBodyBodyAccJerkMag_meanFreq","fBodyBodyGyroMag_mean","fBodyBodyGyroMag_std","fBodyBodyGyroMag_meanFreq","fBodyBodyGyroJerkMag_mean","fBodyBodyGyroJerkMag_std","fBodyBodyGyroJerkMag_MeanFreq","activity")
    
    #assing names to the new dataset with only mean and std
    names(mergeDS_meanandstd)<-mergenames
    
    # create a new dataframe to be used for step 5 of assignment
    # first create an empty data frame with 79 numeric fields
    mergeDS_avgmeanandstd <- as.data.frame(setNames(rep(80,numeric(0), simplify = F), c(1:80)))

    #loop through and assign average
    for( i in 1:6) {
        for(i in 1:79) {
            mergeDS_avgmeanandstd[i,j] <- mean(as.numeric(mergeDS_meanandstd[mergeDS_meanandstd$activity=i,j]))           
        }
    }
    
    # return the new data frame
    names(mergeDS_avgmeanandstd) <- mergenames
    mergeDS_avgmeanandstd
    
}

