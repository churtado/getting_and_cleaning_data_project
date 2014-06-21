#Code Book 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  
  
tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  
  
The set of variables that were estimated from these signals are: 
  
mean(): Mean value  
std(): Standard deviation  

For each variable, the mean of each variable was calculated for each user and activity.


The complete list of variables of each feature vector is available in 'features.txt'

For more information on the data regarding the original dataset please refer to the file "features_info.txt" in the .zip file with the Samsung data.

The following is the full list of all the variables in the tidy data set:

* SUBJECT_ID: unique identifier for the test subject
* ACTIVITY: textual description of the activity the subject was carrying out when the data was recorded.
* tBodyAcc-mean()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAcc-mean()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAcc-mean()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAcc-std()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAcc-std()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAcc-std()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tGravityAcc-mean()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tGravityAcc-mean()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tGravityAcc-mean()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tGravityAcc-std()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tGravityAcc-std()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tGravityAcc-std()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccJerk-mean()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccJerk-mean()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccJerk-mean()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccJerk-std()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccJerk-std()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccJerk-std()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyro-mean()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyro-mean()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyro-mean()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyro-std()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyro-std()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyro-std()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroJerk-mean()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroJerk-mean()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroJerk-mean()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroJerk-std()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroJerk-std()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroJerk-std()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccMag-mean(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccMag-std(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tGravityAccMag-mean(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tGravityAccMag-std(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccJerkMag-mean(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyAccJerkMag-std(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroMag-mean(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroMag-std(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroJerkMag-mean(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* tBodyGyroJerkMag-std(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAcc-mean()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAcc-mean()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAcc-mean()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAcc-std()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAcc-std()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAcc-std()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAccJerk-mean()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAccJerk-mean()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAccJerk-mean()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAccJerk-std()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAccJerk-std()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAccJerk-std()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyGyro-mean()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyGyro-mean()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyGyro-mean()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyGyro-std()-X: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyGyro-std()-Y: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyGyro-std()-Z: mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAccMag-mean(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyAccMag-std(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyBodyAccJerkMag-mean(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyBodyAccJerkMag-std(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyBodyGyroMag-mean(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyBodyGyroMag-std(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyBodyGyroJerkMag-mean(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.
* fBodyBodyGyroJerkMag-std(): mean of the variable of the same name in the original dataset calculated by test subject and activity carried out.

