##################################################################
# Author: Billy Yeh
# This program will analyze the data collected from the
# Human Activity Recognition Using Smartphones Dataset Version 1
##################################################################

# This program will run correctly once you downlaod the zip file from
#
# and unzip it into your working directory in R

# read the data in


# since it is a fixed width file and each field is 16 wide, we will create a repeating vector

widths <- rep(c(16), times=561)
testDS <- read.fwf(“UCI HAR Dataset/test/x_test.txt, widths=widths)
trainDS < read.fwf(“UCI HAR Dataset/train/x_train.txt, widths=widths)

# create a temporary field label for each variable
ctr <- rep(c(1:561), by=1)
names(testDS) <- ctr
names(trainDS) <- ctr
 
# now merge the 2 together to create 1
mergeDS <- rbind(testDS,trainDS)

# extract only the column of interest mean and std
mergeDS_meanandstd <- mergeDS[,c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,294,295,296,345,346,347,348,349,350,373,374,375,424,425,426,427,428,429,452,453,454,503,504,513,516,517,526,529,530,539,542,543,552)]

# rename the new DS with meaningful field names
mergenames<-c("tBodyAcc-mean-X”,”tBodyAcc-mean-Y","tBodyAcc-mean-Z","tBodyAcc-std-X","tBodyAcc-std-Y","tBodyAcc-std-Z","tGravityAcc-mean-X","tGravityAcc-mean-Y","tGravityAcc-mean-Z”,”tGravityAcc-std-X","tGravityAcc-std-Y","tGravityAcc-std-Z","tBodyAccJerk-mean-X","tBodyAccJerk-mean-Y","tBodyAccJerk-mean-Z","tBodyAccJerk-std-X","tBodyAccJerk-std-Y","tBodyAccJerk-std-Z","tBodyGyro-mean-X","tBodyGyro-mean-Y","tBodyGyro-mean-Z","tBodyGyro-std-X","tBodyGyro-std-Y","tBodyGyro-std-Z","tBodyGyroJerk-mean-X","tBodyGyroJerk-mean-Y","tBodyGyroJerk-mean-Z”,”tBodyGyroJerk-std-X","tBodyGyroJerk-std-Y","tBodyGyroJerk-std-Z","tBodyAccMag-mean","tBodyAccMag-std","tGravityAccMag-mean","tGravityAccMag-std”,”tBodyAccJerkMag-mean","tBodyAccJerkMag-std","tBodyGyroMag-mean","tBodyGyroMag-std","tBodyGyroJerkMag-mean","tBodyGyroJerkMag-std","fBodyAcc-mean-X","fBodyAcc-mean-Y","fBodyAcc-mean-Z","fBodyAcc-std-X","fBodyAcc-std-Y","fBodyAcc-std-Z","fBodyAcc-meanFreq-X","fBodyAcc-meanFreq-Y","fBodyAcc-meanFreq-Z","fBodyAccJerk-mean-X","fBodyAccJerk-mean-Y","fBodyAccJerk-mean-Z","fBodyAccJerk-std-X","fBodyAccJerk-std-Y","fBodyAccJerk-std-Z","fBodyAccJerk-meanFreq-X","fBodyAccJerk-meanFreq-Y","fBodyAccJerk-meanFreq-Z","fBodyGyro-mean-X","fBodyGyro-mean-Y","fBodyGyro-mean-Z","fBodyGyro-std-X","fBodyGyro-std-Y","fBodyGyro-std-Z","fBodyGyro-meanFreq-X","453-fBodyGyro-meanFreq-Y","fBodyGyro-meanFreq-Z","fBodyAccMag-mean","fBodyAccMag-std","fBodyAccMag-meanFreq","fBodyBodyAccJerkMag-mean","fBodyBodyAccJerkMag-std","fBodyBodyAccJerkMag-meanFreq","fBodyBodyGyroMag-mean","fBodyBodyGyroMag-std","fBodyBodyGyroMag-meanFreq","fBodyBodyGyroJerkMag-mean","fBodyBodyGyroJerkMag-std","fBodyBodyGyroJerkMag-MeanFreq")
names(mergeDS_meanandstd) <- mergenames

# create new DS with avg of each field





