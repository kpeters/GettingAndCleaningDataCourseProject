---
title: Coureras' Getting and Cleaning Data Course Project README.
author: k.e.s.peters
date: 21-jun-2015
output:
	html_document:
		keep_md:yes
---

This README will explain how the tidy_data was created.

Table of contents:
* Project description
* Study design and data processing
	- Study design
	- Data processing
	- Collection of the raw data
	- Notes on the original (raw) data
* Creating the tidy dataset
	- downloading the data
	- 1a: read the data
	- 1b: merge the data
	- 2a: find indexes of variables with 'mean' and 'std'
	- 2b: extract variables with 'mean' and 'std'
	- 3&4: headers and descriptive variable names for activities
	- 5a: construct tidy dataset
	- 5b: save tidy dataset into text file

---

## Project Description
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Study design and data processing
*The following section was adapted from the README of the original data.*

### Study design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. 

### Data processing 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

**Please consult the CodeBook for more information about the variables which were selected for the tidy_data**

### Collection of the raw data
sources: 
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Notes on the original (raw) data
The original dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating training data and 30% the test data.

The original dataset included the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.


The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Additional Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Creating the tidy dataset
### downloading the data
Download the zip-file under 'sources' to your working directory

### Step 1a: read the data
In this section the various data files required to re-create the complete dataset is read into R.

### Step 1b: merge the data
In this section the various data files are joined together into one big dataset
Note: after merging the data, the first 3 columns are named 'V1'. To avoid problems during the section where the means and std's are extracted, a line of code was added to make each column name unique.

### Step 2a: find indexes of variables with 'mean' and 'std'
In this section I extract the index numbers of columns holding mean and std values. Note1: I'm searching for exact matches of 'mean()' and 'std()' to leave out variables containing 'meanFrequency'. Note2: To maintain the order of columns as obtained from the original data, the Index of mean and std are joined and sorted (ascending)

### Step 2b: extract variables with 'mean' and 'std'
In this section the columns with 'mean()' and 'std()' are extracted and saved to  the variable 'new_data'. Note: Because a column with subject data and activity data were added as well, the 'index' had to be increased by 2

### Step 3&4: headers and descriptive variable names for activities
In this section the activity ID numbers are replaced with descriptive names for the activities. The link between the activity ID numbers and their descriptive names are stored in 'activity_lables'. Their link is as follows:
	- 1 = WALKING
	- 2 = WALKING_UPSTAIRS
	- 3 = WALKING_DOWNSTAIRS
	- 4 = SITTING
	- 5 = STANDING
	- 6 = LAYING

A loop was used to cycle through the ID's and assign the corresponding descriptive names.

Adjacent the data.frame is assigned a header, extracted from the  features table.

### Step 5a: construct tidy dataset
In this section the average of each variable for each activity and each subject is stored in 'tidy_data'
aggregate splits the data into subsets (in this case subject and activity) and computes summary statistics for each (in this case the mean of each collumn per subject per activity)
Note: using aggregate messes up the order of the subjects and activities, therefore they are re-sorted into ascending order using arrange


### Step 5b: save tidy dataset into text file
In this section the tidy dataset is saved into a text file
Note: to read the tidy_data.txt into R, download the file to your working directory and use the following code in R: a <- read.table("tidy_data.txt", headers = TRUE)

## The End