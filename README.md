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



## The code book

This script (run_analysis.R) takes the Samsung data and produces a tidy data set containing the average values of each variable (restricted to the mean and standard deviation for each measurement per step 2 of the instructions) for each activity and each subject. This is done in two steps: 

1. Create a tidy dataset combining the information from the various given files.
2. Present the desired average values in a second tidy data set.

