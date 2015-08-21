## This script takes the Samsung data and produces a tidy data set 
## containing the average values each variable (restricted to the 
## mean and standard deviation for each measurement per step 2 of 
## the instructions) for each activity and each subject. This is
## done in two steps: 
##      1. Create a tidy dataset combining the information from the
##          various given files.
##      2. Present the desired average values in a second tidy 
##          data set.


# Load the plyr package, used for creating the second tidy data set

library(plyr)


# Read in the necessary files, combining test and train data sets,
# always in that order.

# For labelling columns of the data set
features <- read.table("features.txt", stringsAsFactors = FALSE)

# For coding the acitivity names
actlabels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
actlabels <- actlabels[2]

# Measurements from the test and train groups, combined
test <- read.table("test/X_test.txt")
train <- read.table("train/X_train.txt")
merged <- rbind(test, train)
names(merged) <- features[[2]]

# Activity codes from the test and train groups, combined
ytest <- read.table("test/y_test.txt")
ytrain <- read.table("train/y_train.txt")
actcodes <- rbind(ytest, ytrain)
actnames <- actlabels[actcodes[[1]],]

# Subject IDs for from the test and train groups, combined
testsubs <- read.table("test/subject_test.txt")
trainsubs <- read.table("train/subject_train.txt")
subjects <- rbind(testsubs, trainsubs)
names(subjects) <- "Subject ID"


# Extract only the 'mean' and 'std' columns from the
# 'merged' data set

thin <- merged[, grepl("mean()", names(merged)) | 
                   grepl("std()", names(merged)) ]


# Combine the subject IDs, activity names, and measurements
# into one tidy data set 'data'

data <- cbind(subjects, actnames, thin)
names(data)[2] <- "Activity"


# Create the second tidy data set using the plyr package

tidy <- ddply(data, c("Activity", "`Subject ID`"), 
              numcolwise(mean))
print(tidy)
