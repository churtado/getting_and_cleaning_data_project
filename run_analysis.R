run_analysis <- function(filename) {
  
  #run_analysis("getdata-projectfiles-UCI HAR Dataset.zip")
  
  #Print some info:
  working_directory <- getwd()
  print("Working directory: ")
  print(working_directory)
  print("Filename: ")
  print(filename)
  print("Unzipping file (will overwrite if exists)... ")
  
  #Decompress the zip file
  unzip(filename, overwrite=TRUE)
  
  #Getting the labels for the data
  featuresFilename <- paste(working_directory,"/UCI HAR Dataset/features.txt",sep="")
  features = read.table(featuresFilename)
  features <- features[,2]
  
  #Getting training filenames
  dataTrainFileName <- paste(working_directory,"/UCI HAR Dataset/train/X_train.txt",sep="")
  dataTrainSubjectsFileName <- paste(working_directory,"/UCI HAR Dataset/train/subject_train.txt",sep="")
  dataTrainActivitiesName <- paste(working_directory,"/UCI HAR Dataset/train/y_train.txt",sep="")

  #training data
  dataTrain = read.table(dataTrainFileName, col.names=features)
  dataTrain = dataTrain[, c(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 345, 346, 347, 348, 349, 350, 424, 425, 426, 427, 428, 429, 503, 504, 516, 517, 529, 530, 542, 543)]

  #training subjects 
  subjectsTrain = read.table(dataTrainSubjectsFileName)

  #training data activities
  activitiesTrain = read.table(dataTrainActivitiesName)
  activitiesTrain = replace(activitiesTrain, activitiesTrain == 1, "WALKING")
  activitiesTrain = replace(activitiesTrain, activitiesTrain == 2, "WALKING_UPSTAIRS")
  activitiesTrain = replace(activitiesTrain, activitiesTrain == 3, "WALKING_DOWNSTAIRS")
  activitiesTrain = replace(activitiesTrain, activitiesTrain == 4, "SITTING")
  activitiesTrain = replace(activitiesTrain, activitiesTrain == 5, "STANDING")
  activitiesTrain = replace(activitiesTrain, activitiesTrain == 6, "LAYING")

  #Putting the training data together
  trainData <- cbind(subjectsTrain, activitiesTrain)
  colnames(trainData) <- c("SUBJECT_ID", "ACTIVITY")  
  trainData <- cbind(trainData, dataTrain)

  #Getting test filenames
  dataTestFileName <- paste(working_directory,"/UCI HAR Dataset/test/X_test.txt",sep="")
  dataTestSubjectsFileName <- paste(working_directory,"/UCI HAR Dataset/test/subject_test.txt",sep="")
  dataTestActivitiesName <- paste(working_directory,"/UCI HAR Dataset/test/y_test.txt",sep="")

  #test data
  dataTest = read.table(dataTestFileName, col.names=features)
  dataTest = dataTest[, c(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 345, 346, 347, 348, 349, 350, 424, 425, 426, 427, 428, 429, 503, 504, 516, 517, 529, 530, 542, 543)]

  #test subjects 
  subjectsTest = read.table(dataTestSubjectsFileName)

  #test data activities
  activitiesTest = read.table(dataTestActivitiesName)
  activitiesTest = replace(activitiesTest, activitiesTest == 1, "WALKING")
  activitiesTest = replace(activitiesTest, activitiesTest == 2, "WALKING_UPSTAIRS")
  activitiesTest = replace(activitiesTest, activitiesTest == 3, "WALKING_DOWNSTAIRS")
  activitiesTest = replace(activitiesTest, activitiesTest == 4, "SITTING")
  activitiesTest = replace(activitiesTest, activitiesTest == 5, "STANDING")
  activitiesTest = replace(activitiesTest, activitiesTest == 6, "LAYING")

  #Putting the test data together
  testData <- cbind(subjectsTest, activitiesTest)

  colnames(testData) <- c("SUBJECT_ID", "ACTIVITY")  
  testData <- cbind(testData, dataTest)

  #Putting the training and test together
  completeData <- rbind(trainData, testData)

  #Exporting the data
  write.csv(completeData, file="complete_data.csv")

  print("entering loop")
  #Generating tidy data
  
  subjects <- unique(completeData$SUBJECT_ID)

  activities <- unique(completeData$ACTIVITY)

  tidyData <- c()

  for(i in 1:length(subjects)){
    
    subjectData <- subset(completeData, completeData$SUBJECT_ID == subjects[i])
    
    for(j in 1:length(activities)){
      
      activityData <- subset(subjectData, subjectData$ACTIVITY == activities[j])
      averages <- c()
      
      averageData <- within(activityData, rm("SUBJECT_ID"))
      averageData <- within(averageData, rm("ACTIVITY"))
      
      print(averageData)
      for(m in 1:ncol(averageData)){
        
        data <- na.omit(averageData[,m])
        averages[m] <- mean(data)   
        
      }  
      
      averageData <- c(subjects[i],activities[j])
      averageData <- c(averageData,averages)
      if(i == 1 & m == 1){

        tidyData <- averageData

      }else{
        
        tidyData <- rbind(tidyData,averageData) 
        
      }     
      
    }
    
  }

  colnames(tidyData) <- c ("SUBJECT_ID", "ACTIVITY", "tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()")
  write.csv(tidyData, file="tidy_data.csv")
  #tidyData

}