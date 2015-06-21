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
names(mergeDS_meanandstd) <- c(
“1-tBodyAcc-mean-X","
2-tBodyAcc-mean-Y","
3-tBodyAcc-mean-Z","
4-tBodyAcc-std-X","
5-tBodyAcc-std-Y","
6-tBodyAcc-std-Z","
41-tGravityAcc-mean-X","
42-tGravityAcc-mean-Y","
43-tGravityAcc-mean-Z","
44-tGravityAcc-std-X","
45-tGravityAcc-std-Y","
46-tGravityAcc-std-Z","
81-tBodyAccJerk-mean-X","
82-tBodyAccJerk-mean-Y","
83-tBodyAccJerk-mean-Z","
84-tBodyAccJerk-std-X","
85-tBodyAccJerk-std-Y","
86-tBodyAccJerk-std-Z","
121-tBodyGyro-mean-X","
122-tBodyGyro-mean-Y","
123-tBodyGyro-mean-Z","
124-tBodyGyro-std-X","
125-tBodyGyro-std-Y","
126-tBodyGyro-std-Z","
161-tBodyGyroJerk-mean-X","
162-tBodyGyroJerk-mean-Y","
163-tBodyGyroJerk-mean-Z
164-tBodyGyroJerk-std-X","
165-tBodyGyroJerk-std-Y","
166-tBodyGyroJerk-std-Z","
201-tBodyAccMag-mean","
202-tBodyAccMag-std","
214-tGravityAccMag-mean","
215-tGravityAccMag-std","
227-tBodyAccJerkMag-mean","
228-tBodyAccJerkMag-std","
240-tBodyGyroMag-mean","
241-tBodyGyroMag-std","
253-tBodyGyroJerkMag-mean","
254-tBodyGyroJerkMag-std","
266-fBodyAcc-mean-X","
267-fBodyAcc-mean-Y","
268-fBodyAcc-mean-Z","
269-fBodyAcc-std-X","
270-fBodyAcc-std-Y","
271-fBodyAcc-std-Z","
294-fBodyAcc-meanFreq-X","
295-fBodyAcc-meanFreq-Y","
296-fBodyAcc-meanFreq-Z","
345-fBodyAccJerk-mean-X","
346-fBodyAccJerk-mean-Y","
347-fBodyAccJerk-mean-Z","
348-fBodyAccJerk-std-X","
349-fBodyAccJerk-std-Y","
350-fBodyAccJerk-std-Z","
373-fBodyAccJerk-meanFreq-X","
374-fBodyAccJerk-meanFreq-Y","
375-fBodyAccJerk-meanFreq-Z","
424-fBodyGyro-mean-X","
425-fBodyGyro-mean-Y","
426-fBodyGyro-mean-Z","
427-fBodyGyro-std-X","
428-fBodyGyro-std-Y","
429-fBodyGyro-std-Z","
452-fBodyGyro-meanFreq-X","
453-fBodyGyro-meanFreq-Y","
454-fBodyGyro-meanFreq-Z","
503-fBodyAccMag-mean","
504-fBodyAccMag-std","
513-fBodyAccMag-meanFreq","
516-fBodyBodyAccJerkMag-mean","
517-fBodyBodyAccJerkMag-std","
526-fBodyBodyAccJerkMag-meanFreq","
529-fBodyBodyGyroMag-mean","
530-fBodyBodyGyroMag-std","
539-fBodyBodyGyroMag-meanFreq","
542-fBodyBodyGyroJerkMag-mean","
543-fBodyBodyGyroJerkMag-std","
552-fBodyBodyGyroJerkMag-meanFreq")





