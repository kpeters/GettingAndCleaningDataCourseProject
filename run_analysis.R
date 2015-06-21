## Script to read, merge, tidy and analyze activity data of the Samsung Galaxy S smartphone
# sources: 
#   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


library(dplyr)


##1a: read the various data files required to re-create one complete dataset 
raw_test <- read.table("./UCI HAR Dataset/test/x_test.txt")
raw_train <- read.table("./UCI HAR Dataset/train/x_train.txt")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

activity_test  <- read.table("./UCI HAR Dataset/test/y_test.txt")
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

activity_lables <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")



##1b: merge datasets
# column bind subjects and activity, in that order
subj_act_test <- cbind(subject_test, activity_test) 
subj_act_train <- cbind(subject_train, activity_train)

# column bind subject_activities to raw data, in that order
merged_test <- cbind(subj_act_test, raw_test)
merged_train <- cbind(subj_act_train, raw_train)

# row bind merged_test and merged_train, in that order
merged_data <- rbind(merged_test, merged_train)

# after merging the data, the first 3 columns have the name 'V1'
# the next line makes those column names unique, 
# to avoid problems during extracting the means and std's
names(merged_data) <- make.names(names=names(merged_data), unique=TRUE) # make column names unique



##2a: find indexes of variables with "mean()" and "std()"
mean_index <- grep("mean()", features[ ,2], fixed=TRUE)
std_index <- grep("std()", features[ ,2], fixed=TRUE)

# combine and sort mean() and std() indices into one "index" variable
index <- sort(c(mean_index,std_index)) 



##2b: extract the columns which include mean() and std()
new_data <- select(merged_data, 1, 2, (index+2)) #



##3 & 4: replace activity ID numbers with descriptive names & label variable names
# header names
header <- c("subject", "activity", as.character(features[index,2]))
names(new_data) <- header

# descriptive activity labels
for (i in 1:nrow(activity_lables)){
    new_data$activity[new_data$activity==i] <- as.character(activity_lables[i,2])
}


## 5a: tidy dataset with the average of each variable for each activity and each subject
tidy_data <- aggregate(new_data[-(1:2)], list(subject=new_data$subject,activity=new_data$activity), mean)
tidy_data  <- arrange(tidy_data,subject,activity)



## 5b: save tidy dataset
write.table(tidy_data, file = "tidy_data.txt", row.name=FALSE )
# a <- read.table("tidy_data.txt", header=TRUE)