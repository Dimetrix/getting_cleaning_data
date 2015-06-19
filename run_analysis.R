library(dplyr)

features <- read.table("./UCI HAR Dataset/features.txt")

#processing train data
subject_train <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table(file = "./UCI HAR Dataset/train/X_train.txt", col.names = features$V2)
y_train <- read.table(file = "./UCI HAR Dataset/train/y_train.txt", col.names = "activity")
train_merged <- cbind(x_train, y_train, subject_train)

#processing test data
subject_test <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table(file = "./UCI HAR Dataset/test/X_test.txt", col.names = features$V2)
y_test <- read.table(file = "./UCI HAR Dataset/test/y_test.txt", col.names = "activity")
test_merged <- cbind(x_test, y_test, subject_test)

#uniting train and test data
merged <- rbind(train_merged, test_merged)

#removing not needed objects
rm(features, subject_train, x_train, y_train, train_merged, subject_test, x_test, y_test, test_merged)

#leaving only the measurements on the mean and standard deviation.
#these are the ones that have 'mean' or 'std' in there names
merged <- merged[ , grepl("mean|std|activity|subject", names(merged))]

#adding descriptive activity names to name the activities in the data set
activity_labels <- read.table(file = "./UCI HAR Dataset/activity_labels.txt",
                              col.names = c("activity","activity_label"))
merged <- merge(merged, activity_labels, by.x = "activity", by.y = "activity")

#labeling the data set with descriptive variable names
names(merged) <- gsub("mean","Mean", names(merged))
names(merged) <- gsub("std","Std", names(merged))
names(merged) <- gsub("\\.","", names(merged))

#calculating average of each variable for each activity and each subject
merged <- group_by(merged, subject, activity_label)
merged_final <- summarize(merged,
                          m_tBodyAccMeanX = mean(tBodyAccMeanX),
                          m_tBodyAccMeanY = mean(tBodyAccMeanY),
                          m_tBodyAccMeanZ = mean(tBodyAccMeanZ),
                          m_tBodyAccStdX = mean(tBodyAccStdX),
                          m_tBodyAccStdY = mean(tBodyAccStdY),
                          m_tBodyAccStdZ = mean(tBodyAccStdZ),
                          m_tGravityAccMeanX = mean(tGravityAccMeanX),
                          m_tGravityAccMeanY = mean(tGravityAccMeanY),
                          m_tGravityAccMeanZ = mean(tGravityAccMeanZ),
                          m_tGravityAccStdX = mean(tGravityAccStdX),
                          m_tGravityAccStdY = mean(tGravityAccStdY),
                          m_tGravityAccStdZ = mean(tGravityAccStdZ),
                          m_tBodyAccJerkMeanX = mean(tBodyAccJerkMeanX),
                          m_tBodyAccJerkMeanY = mean(tBodyAccJerkMeanY),
                          m_tBodyAccJerkMeanZ = mean(tBodyAccJerkMeanZ),
                          m_tBodyAccJerkStdX = mean(tBodyAccJerkStdX),
                          m_tBodyAccJerkStdY = mean(tBodyAccJerkStdY),
                          m_tBodyAccJerkStdZ = mean(tBodyAccJerkStdZ),
                          m_tBodyGyroMeanX = mean(tBodyGyroMeanX),
                          m_tBodyGyroMeanY = mean(tBodyGyroMeanY),
                          m_tBodyGyroMeanZ = mean(tBodyGyroMeanZ),
                          m_tBodyGyroStdX = mean(tBodyGyroStdX),
                          m_tBodyGyroStdY = mean(tBodyGyroStdY),
                          m_tBodyGyroStdZ = mean(tBodyGyroStdZ),
                          m_tBodyGyroJerkMeanX = mean(tBodyGyroJerkMeanX),
                          m_tBodyGyroJerkMeanY = mean(tBodyGyroJerkMeanY),
                          m_tBodyGyroJerkMeanZ = mean(tBodyGyroJerkMeanZ),
                          m_tBodyGyroJerkStdX = mean(tBodyGyroJerkStdX),
                          m_tBodyGyroJerkStdY = mean(tBodyGyroJerkStdY),
                          m_tBodyGyroJerkStdZ = mean(tBodyGyroJerkStdZ),
                          m_tBodyAccMagMean = mean(tBodyAccMagMean),
                          m_tBodyAccMagStd = mean(tBodyAccMagStd),
                          m_tGravityAccMagMean = mean(tGravityAccMagMean),
                          m_tGravityAccMagStd = mean(tGravityAccMagStd),
                          m_tBodyAccJerkMagMean = mean(tBodyAccJerkMagMean),
                          m_tBodyAccJerkMagStd = mean(tBodyAccJerkMagStd),
                          m_tBodyGyroMagMean = mean(tBodyGyroMagMean),
                          m_tBodyGyroMagStd = mean(tBodyGyroMagStd),
                          m_tBodyGyroJerkMagMean = mean(tBodyGyroJerkMagMean),
                          m_tBodyGyroJerkMagStd = mean(tBodyGyroJerkMagStd),
                          m_fBodyAccMeanX = mean(fBodyAccMeanX),
                          m_fBodyAccMeanY = mean(fBodyAccMeanY),
                          m_fBodyAccMeanZ = mean(fBodyAccMeanZ),
                          m_fBodyAccStdX = mean(fBodyAccStdX),
                          m_fBodyAccStdY = mean(fBodyAccStdY),
                          m_fBodyAccStdZ = mean(fBodyAccStdZ),
                          m_fBodyAccMeanFreqX = mean(fBodyAccMeanFreqX),
                          m_fBodyAccMeanFreqY = mean(fBodyAccMeanFreqY),
                          m_fBodyAccMeanFreqZ = mean(fBodyAccMeanFreqZ),
                          m_fBodyAccJerkMeanX = mean(fBodyAccJerkMeanX),
                          m_fBodyAccJerkMeanY = mean(fBodyAccJerkMeanY),
                          m_fBodyAccJerkMeanZ = mean(fBodyAccJerkMeanZ),
                          m_fBodyAccJerkStdX = mean(fBodyAccJerkStdX),
                          m_fBodyAccJerkStdY = mean(fBodyAccJerkStdY),
                          m_fBodyAccJerkStdZ = mean(fBodyAccJerkStdZ),
                          m_fBodyAccJerkMeanFreqX = mean(fBodyAccJerkMeanFreqX),
                          m_fBodyAccJerkMeanFreqY = mean(fBodyAccJerkMeanFreqY),
                          m_fBodyAccJerkMeanFreqZ = mean(fBodyAccJerkMeanFreqZ),
                          m_fBodyGyroMeanX = mean(fBodyGyroMeanX),
                          m_fBodyGyroMeanY = mean(fBodyGyroMeanY),
                          m_fBodyGyroMeanZ = mean(fBodyGyroMeanZ),
                          m_fBodyGyroStdX = mean(fBodyGyroStdX),
                          m_fBodyGyroStdY = mean(fBodyGyroStdY),
                          m_fBodyGyroStdZ = mean(fBodyGyroStdZ),
                          m_fBodyGyroMeanFreqX = mean(fBodyGyroMeanFreqX),
                          m_fBodyGyroMeanFreqY = mean(fBodyGyroMeanFreqY),
                          m_fBodyGyroMeanFreqZ = mean(fBodyGyroMeanFreqZ),
                          m_fBodyAccMagMean = mean(fBodyAccMagMean),
                          m_fBodyAccMagStd = mean(fBodyAccMagStd),
                          m_fBodyAccMagMeanFreq = mean(fBodyAccMagMeanFreq),
                          m_fBodyBodyAccJerkMagMean = mean(fBodyBodyAccJerkMagMean),
                          m_fBodyBodyAccJerkMagStd = mean(fBodyBodyAccJerkMagStd),
                          m_fBodyBodyAccJerkMagMeanFreq = mean(fBodyBodyAccJerkMagMeanFreq),
                          m_fBodyBodyGyroMagMean = mean(fBodyBodyGyroMagMean),
                          m_fBodyBodyGyroMagStd = mean(fBodyBodyGyroMagStd),
                          m_fBodyBodyGyroMagMeanFreq = mean(fBodyBodyGyroMagMeanFreq),
                          m_fBodyBodyGyroJerkMagMean = mean(fBodyBodyGyroJerkMagMean),
                          m_fBodyBodyGyroJerkMagStd = mean(fBodyBodyGyroJerkMagStd),
                          m_fBodyBodyGyroJerkMagMeanFreq = mean(fBodyBodyGyroJerkMagMeanFreq))

#saving final dataset to text tab-delimited file
write.table(merged_final, file = "final_dataset.txt", sep = "\t", row.names = FALSE)