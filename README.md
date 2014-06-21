Getting and Cleaning Data: Course Project
=========================================

#Description
This repository contains a scrit that processes Samsung data and turns it into a tidy data set.

#Disclaimer
The description of this project was left intentionally ambiguous, so I would ask that you please take that into consideration. On my part, I will be as detailed and explicit in explaining what the code does.

Please note that the data in the tidy_dataset.csv file is not ordered by subject ID, as I did not think it was necessary to do so. Since it is a numerical ID only for the purpose of separating each data point, ordering the field doesn't add value or clarity to what's going on in the data set.

Also note that the tidy_dataset.csv file conserves the names of the original measures as found in the "features.txt" file. This was done to avoid having lenthy names, such as "activity and subject mean of variable XYZ".

Finally, please note that the Code Book is included in this file.

#Installation
To install the script, download it from github (provide a link) into the working directory of your installation of R.

NOTE: it is ABSOLUTELY necessary that the .zip file containing the Samsung data be in the working directory of the R script as well. If not, it won't work!

Also note that you MUST ABSOLUTELY use the original .zip file provided in the link in the assignment page.

You can run the script by sourcing the file "run_analysis.R" and calling the only function contained in it called "run_analysis()".

#Running the code
The run_analysis function takes a single parameter: the name of the .zip file containing the samsung data. So, for example, if your .zip file is called:

getdata-projectfiles-UCI HAR Dataset.zip

then you must call the function in the following way:

run_analysis("getdata-projectfiles-UCI HAR Dataset.zip")

The function will unzip the data inside the compressed file and process it. 
WARNING: If the file was already decompressed, the script will decompress it again and overwrite the files.
Make sure the unzip() function is available in your installation of R in case of any error.


#What does the code do?

The Samsung data is split into a training data set and a test data set. Both data sets have the same basic structure:

1.- One file that contains a numeric ID of the test subject  
2.- One file that contains the activity the subject was carrying out when the data was collected  
3.- One file that contains the data itself

## The code does the following:

1.- Decompress the .zip file. There will be several folders created for the test and training data.  
2.- Read the "features.txt" file to get the names of the variables in our data set.  
3.- Obtains the full path of the training files.  
4.- Reads the training data file and filters out the unwanted measures (we only want means and standard deviations).  
5.- Reads the subject ID file.  
6.- Reads the activities file.  
7.- Translates the activities data into text so that the end user can easily tell what activity was being carried out by the test subject.  
  
NOTE: there are different amounts of columns for the 3 training and test files, but they have the same amount of rows. I am assuming that each row in each file refers to the same data point. For example, the third row for each of the three files will give me the following information:

1.- Subject file: subject being tested in the third data point.  
2.- Activity file: activity the test subject referred to in the subject file was carrying out.  
3.- Data file: data for the activity described in point 2.  

After this is done, the code repeats steps 3 to 7 with the test data and merges all of the data from the test and training set into one data frame. This data is printed out to a file called "complete_data.csv".

Then, the script calculates the mean value for each variable for each activity for each subject. This data is then written to another file called "tidy_data.csv" which has been uploaded to the github repository.


## Results
Once the script is done running, please look in your working directory. You should see that the .zip file with the Samsung data was decompressed. You will also see 2 .csv files:

1.- complete_data.csv: the original data is provided, joining both the training and the test data.  
2.- tidy_data.csv: the tidy data set is provided as a .csv file for viewing with a spreadsheet program or directly in R.  

#Codebook
For more information on the data regarding the original dataset please refer to the file "features_info.txt" in the .zip file with the Samsung data.

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
