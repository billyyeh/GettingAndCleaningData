# GettingAndCleaningData
This is the project assignment for Getting and Cleaning Data

You will need to first download the data and unzip it into your working directory

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Unzip the folder into your R working folder

Now, go ahead and run the function

run_analysis()

what should return is a data frame with averages of all variables that are either a mean or std

The loading process takes a while so please be patient

The process will do the following
1. Load the test and training data of subject activity data collected from Samsung accelerometer
2. Load the subject and activity reference data
3. bind the subject and activity data
4. Merge the test and training data into 1 data frame
5. Create an new data frame with only variables that have mean and std in their names
6. Create readable variable names in the newly filtered dataset
7. Create another data frame that takes the average of all of those fields
8. Returns the new data frame back
