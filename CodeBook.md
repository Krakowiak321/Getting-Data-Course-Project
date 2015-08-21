# Code Book

* actcodes - activity codes from the test and train subjects, in that order.
* actlabels - numerical codes for the six activities.
* data - the data frame which we aim to compute the average values from, consisting of subject IDs, activity names, and measured values of the variables involving mean() and std().
* features - the names of the measured variables are stored in the second column of features. The first column isn't needed.
* merged - the values of the measured variables from the test and train subjects, in that order.
* subjects - the subject IDs corresponding to the measurements on the test and train subjects, in that order.
* test - the values of the measure variables from the test subjects only.
* testsubs - the subject IDs corresponding to the measurements on the test subjects only.
* thin - consists of those columns of 'merged' including either of the strings "mean()", "std()".
* tidy - the final tidy data set consisting of the average values of the measured variables for each activity and subject.
* train - the values of the measure variables from the train subjects only.
* trainsubs - the subject IDs corresponding to the measurements on the train subjects only.
* ytest - activity codes from the test group.
* ytrain - activity codes from the train group.
* actnames - descriptive activity names from the test and train subjects, in that order.
