The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Next variables are used in final file (m_ means median of apropriate metric):
m_tBodyAccMeanXYZ
m_tBodyAccStdXYZ
m_tGravityAccMeanXYZ
m_tGravityAccStdXYZ
m_tBodyAccJerkMeanXYZ
m_tBodyAccJerkStdXYZ
m_tBodyGyroMeanXYZ
m_tBodyGyroStdXYZ
m_tBodyGyroJerkMeanXYZ
m_tBodyGyroJerkStdXYZ
m_tBodyAccMagMean
m_tBodyAccMagStd
m_tGravityAccMagMean
m_tGravityAccMagStd
m_tBodyAccJerkMagMean
m_tBodyAccJerkMagStd
m_tBodyGyroMagMean
m_tBodyGyroMagStd
m_tBodyGyroJerkMagMean
m_tBodyGyroJerkMagStd
m_fBodyAccMeanXYZ
m_fBodyAccStdXYZ
m_fBodyAccMeanFreqXYZ
m_fBodyAccJerkMeanXYZ
m_fBodyAccJerkStdXYZ
m_fBodyAccJerkMeanFreqXYZ
m_fBodyGyroMeanXYZ
m_fBodyGyroStdXYZ
m_fBodyGyroMeanFreqXYZ
m_fBodyAccMagMean
m_fBodyAccMagStd
m_fBodyAccMagMeanFreq
m_fBodyBodyAccJerkMagMean
m_fBodyBodyAccJerkMagStd
m_fBodyBodyAccJerkMagMeanFreq
m_fBodyBodyGyroMagMean
m_fBodyBodyGyroMagStd
m_fBodyBodyGyroMagMeanFreq
m_fBodyBodyGyroJerkMagMean
m_fBodyBodyGyroJerkMagStd
m_fBodyBodyGyroJerkMagMeanFreq