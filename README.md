# Getting and Cleaning Data - Course Project

This repository contains my submission for the "Getting and Cleaning Data" course project.

## The raw data 

The data was collected from the accelerometers in the Samsung Galaxy S smartphone. Thirty volunteers (subjects identified by a number 1-30) wore this smart phone while performing various activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying). The subjects are divided into two categories: "test" and "training". The "test" category is made up of 30% of the thirty subjects, and the "train" category is made up the remaining 70%. Each measurement consists of a 561-feature vector describing the motion of the subject in detail. See features_info.txt for more details on these features, including a description of some initial processing.

The data comes in multiple files:

* 'features.txt' contains the names of the features measured.
* 'activity_labels.txt' contains a data frame assigning a numerical code (a number 1-6) to each activity.
* 'test/X_test.txt' contains the values of the 561-feature vectors for the "test" subjects.
* 'train/X_train.txt' contains the values of the 561-feature vectors for the "training" subjects.
* 'test/y_test.txt' contains the activity codes for the "test" subjects corresponding to the measurements in 'test/X_test.txt'.
* 'train/y_train.txt' contains the activity codes for the "training" subjects corresponding to the measurements in 'test/X_train.txt'.
* 'test/subject_test.txt' contains the subject IDs for the "test" subjects corresponding to the measurements in 'test/X_test.txt'.
* 'train/subject_train.txt' contains the subject IDs for the "train" subjects corresponding to the measurements in 'test/X_train.txt'.

## The analysis script

The UCI HAR Dataset must be extracted and available in the working directory. The 'plyr' package must be installed. Then running 'run_analysis.R' will 

1. merge the test and training datasets together
2. discard measurements of features other than 'mean' and 'standard deviation' measurements
3. create columns to include subject IDs and descriptive activity names
4. label the columns of this data frame appropriately and use it to
5. Create a second tidy set called 'tidy.txt' containing the average values of the selected variables for each subject and activity.

## The code book

The code book provide a description of the variables in 'tidy.txt' and the steps used to clean the data. 
