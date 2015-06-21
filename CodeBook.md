---
title: Courseras' Getting and Cleaning Data Course Project Codebook.
author: k.e.s.peters
date: 21-jun-2015
output:
	html_document:
		keep_md: yes
---

This code book will only explain the variables of the final dataset (tidy_data.txt). Please consult the README.md for information about how the tidy_data was created.

---

tidy_data
dimension: 180 rows, 68 columns

1: subject
	description: subject number
	class: integer
	range: 1 to 30

2: activity
	description: descriptive activity name
	class: character
	range: 	WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

3: tBodyAcc-mean()-X
	description: aggregated mean of the 'standardized mean from the time domain of the body acceleration in the X-direction'
	class: 	numeric
	NOTE:	original values were 'standardized Z values' ranging between -1 and 1
	

4: tBoddyAcc-mean()-Y
	description: aggregated mean of the 'standardized mean from thetime domain of the body acceleration in the Y-direction'
	class: 	numeric

5: tBoddyAcc-mean()-Z
	description: aggregated mean of the 'standardized mean from the time domain of the body acceleration in the Z-direction'
	class: 	numeric


6: tBodyAcc-std()-X
	description: aggregated mean of the 'standardized std from the time domain of the body acceleration in the X-direction'
	class:	numeric

7: tBodyAcc-std()-Y
	description: aggregated mean of the 'standardized std from the time domain of the body acceleration in the Y-direction'
	class:	numeric

8: tBodyAcc-std()-Z
	description: aggregated mean of the 'standardized std from the time domain of the body acceleration in the Z-direction'
	class:	numeric


9: tGravityAcc-mean()-X
	description: aggregated mean of the 'standardized mean from the time domain of the gravity acceleration in the X-direction'
	class: numeric

10: tGravityAcc-mean()-Y
	description: aggregated mean of the 'standardized mean from the time domain of the gravity acceleration in the Y-direction'
	class: numeric

11: tGravityAcc-mean()-Z
	description: aggregated mean of the 'standardized mean from the time domain of the gravity acceleration in the Z-direction'
	class: numeric


12: tGravityAcc-std()-X
	description: aggregated mean of the 'standardized std from the time domain of the gravity acceleration in the X-direction'
	class: numeric

13: tGravityAcc-std()-Y
	description: aggregated mean of the 'standardized std from the time domain of the gravity acceleration in the Y-direction'
	class: numeric

14:  tGravityAcc-std()-Z
	description: aggregated mean of the 'standardized std from the time domain of the gravity acceleration in the Z-direction'
	class: numeric


15: tBodyAccJerk-mean()-X
	description: aggregated mean of the 'standardized mean from the time domain of the body jerk in the X-direction'
	class: numeric

16: tBodyAccJerk-mean()-Y
	description: aggregated mean of the 'standardized mean from the time domain of the body jerk in the Y-direction'
	class: numeric

17: tBodyAccJerk-mean()-Z
	description: aggregated mean of the 'standardized mean from the time domain of the body jerk in the Z-direction'
	class: numeric


18: tBodyAccJerk-std()-X
	description: aggregated mean of the 'standardized std from the time domain of the body jerk in the X-direction'
	class: numeric

19: tBodyAccJerk-mean()-Y
	description: aggregated mean of the 'standardized mean from the time domain of the body jerk in the Y-direction'
	class: numeric

20: tBodyAccJerk-mean()-Z
	description: aggregated mean of the 'standardized mean from the time domain of the body jerk in the Z-direction'
	class: numeric


21: tBodyGyro-mean()-X
	description: aggregated mean of the 'standardized mean from the time domain of the body gyroscope in the X-direction'
	class: numeric

22: tBodyGyro-mean()-Y
	description: aggregated mean of the 'standardized mean from the time domain of the body gyroscope in the Y-direction'
	class: numeric

23: tBodyGyro-mean()-X
	description: aggregated mean of the 'standardized mean from the time domain of the body gyroscope in the X-direction'
	class: numeric


24: tBodyGyro-std()-X
	description: aggregated mean of the 'standardized std from the time domain of the body gyroscope in the X-direction'
	class: numeric

25: tBodyGyro-std()-Y
	description: aggregated mean of the 'standardized std from the time domain of the body gyroscope in the Y-direction'
	class: numeric

26: tBodyGyro-std()-Z
	description: aggregated mean of the 'standardized std from the time domain of the body gyroscope in the Z-direction'
	class: numeric


27: tBodyGyroJerk-mean()-X
	description: aggregated mean of the 'standardized mean from the time domain of the body gyroscope jerk in the X-direction'
	class: numeric

28:  tBodyGyroJerk-mean()-Y
	description: aggregated mean of the 'standardized mean from the time domain of the body gyroscope jerk in the Y-direction'
	class: numeric

29: tBodyGyroJerk-mean()-Z
	description: aggregated mean of the 'standardized mean from the time domain of the body gyroscope jerk in the Z-direction'
	class: numeric


30: tBodyGyroJerk-std()-X
	description: aggregated mean of the 'standardized std from the time domain of the body gyroscope jerk in the X-direction'
	class: numeric

31: tBodyGyroJerk-mean()-Y
	description: aggregated mean of the 'standardized mean from the time domain of the body gyroscope jerk in the Y-direction'
	class: numeric

32: tBodyGyroJerk-mean()-Z
	description: aggregated mean of the 'standardized mean from the time domain of the body gyroscope jerk in the Z-direction'
	class: numeric


33: tBodyAccMag-mean()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm mean from the time domain of body acceleration magnitude'
	class: numeric

34: tBodyAccMag-std()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm std from the time domain of body acceleration magnitude'
	class: numeric


35: tGravityAccMag-mean()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm mean from the time domain of gravity acceleration magnitude'
	class: numeric

36: tGravityAccMag-std()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm std from the time domain of gravity acceleration magnitude'
	class: numeric


37: tBodyAccJerkMag-mean()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm mean from the time domain of body acceleration jerk magnitude'
	class: numeric

38: tBodyAccJerkMag-std()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm std from the time domain of body acceleration jerk magnitude'
	class: numeric


39: tBodyGyroMag-mean()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm mean from the time domain of body gryoscope magnitude'
	class: numeric

40: tBodyGyroMag-std()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm std from the time domain of body gryoscope magnitude'
	class: numeric


41: tBodyGyroJerkMag-mean()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm mean from the time domain of body gryoscope jerk magnitude'
	class: numeric

42: tBodyGyroJerkMag-std()
	description: aggregated mean of the 'three-dimeansional standardized Euclidean norm std from the time domain of body gryoscope jerk magnitude'
	class: numeric


43: fBodyAcc-mean()-X
	description: aggregated mean of the 'standardized mean from the frequency domain of the body acceleration in the X-direction'
	class: 	numeric
	NOTE:	original values were 'standardized Z values' ranging between -1 and 1
	

44: fBoddyAcc-mean()-Y
	description: aggregated mean of the 'standardized mean from the frequency domain of the body acceleration in the Y-direction'
	class: 	numeric

45: fBoddyAcc-mean()-Z
	description: aggregated mean of the 'standardized mean from the frequency domain of the body acceleration in the Z-direction'
	class: 	numeric


46: fBodyAcc-std()-X
	description: aggregated mean of the 'standardized std from the frequency domain of the body acceleration in the X-direction'
	class:	numeric

47: fBodyAcc-std()-Y
	description: aggregated mean of the 'standardized std from the frequency domain of the body acceleration in the Y-direction'
	class:	numeric

48: fBodyAcc-std()-Z
	description: aggregated mean of the 'standardized std from the frequency domain of the body acceleration in the Z-direction'
	class:	numeric


49: fBodyAccJerk-mean()-X
	description: aggregated mean of the 'standardized mean from the frequency domain of the body jerk in the X-direction'
	class: numeric

50: fBodyAccJerk-mean()-Y
	description: aggregated mean of the 'standardized mean from the frequency domain of the body jerk in the Y-direction'
	class: numeric

51: fBodyAccJerk-mean()-Z
	description: aggregated mean of the 'standardized mean from the frequency domain of the body jerk in the Z-direction'
	class: numeric


52: fBodyAccJerk-std()-X
	description: aggregated mean of the 'standardized std from the frequency domain of the body jerk in the X-direction'
	class: numeric

53: fBodyAccJerk-mean()-Y
	description: aggregated mean of the 'standardized mean from the frequency domain of the body jerk in the Y-direction'
	class: numeric

54: fBodyAccJerk-mean()-Z
	description: aggregated mean of the 'standardized mean from the freaquency domain of the body jerk in the Z-direction'
	class: numeric


55: fBodyGyro-mean()-X
	description: aggregated mean of the 'standardized mean from the frequency domain of the body gyroscope in the X-direction'
	class: numeric

56: fBodyGyro-mean()-Y
	description: aggregated mean of the 'standardized mean from the frequency domain of the body gyroscope in the Y-direction'
	class: numeric

57: fBodyGyro-mean()-X
	description: aggregated mean of the 'standardized mean from the frequency domain of the body gyroscope in the X-direction'
	class: numeric


58: fBodyGyro-std()-X
	description: aggregated mean of the 'standardized std from the frequency domain of the body gyroscope in the X-direction'
	class: numeric

59: fBodyGyro-std()-Y
	description: aggregated mean of the 'standardized std from the frequency domain of the body gyroscope in the Y-direction'
	class: numeric

60: fBodyGyro-std()-Z
	description: aggregated mean of the 'standardized std from the frequency domain of the body gyroscope in the Z-direction'
	class: numeric


61: fBodyAccMag-mean()
	description: aggregated mean of the 'three-dimensional standardized Euclidean norm mean from the frequency domain of body acceleration magnitude'
	class: numeric

62: fBodyAccMag-std()
	description: aggregated mean of the 'three-dimensional standardized Euclidean norm std from the frequency domain of body acceleration magnitude'
	class: numeric


63: fBodyBodyAccJerkMag-mean()
	description: aggregated mean of the 'three-dimensional standardized Eucldean norm mean from the frequency domain of body body acceleration jerk magnitude'
	class: numeric

64: fBodyBodyAccJerkMag-std()
	description: aggregated mean of the 'three-dimensional standardized Eucldean norm std from the frequency domain of body body acceleration jerk magnitude'
	class: numeric


65: fBodyBodyFyroMag-mean()
	description: aggregated mean of the 'three-dimensional standardized Eucldean norm mean from the frequency domain of body body gyroscope magnitude'
	class: numeric

66: fBodyBodyFyroMag-std()
	description: aggregated mean of the 'three-dimensional standardized Eucldean norm std from the frequency domain of body body gyroscope magnitude'
	class: numeric


67: fBodyBodyGyroJerkMag-mean()
	description: aggregated mean of the 'three-dimensional standardized Eucldean norm mean from the frequency domain of body body gyroscope jerk magnitude'
	class: numeric

68: fBodyBodyGyroJerkMag-std()
	description: aggregated mean of the 'three-dimensional standardized Eucldean norm std from the frequency domain of body body gyroscope jerk magnitude'
	class: numeric

---