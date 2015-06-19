Next variables are used in final file (m_ means median of apropriate metric):

variable|domain signals|acceleration signals|source of signal|Jerk signal|magnitude signal|type of value
--------|--------------|--------------------|----------------|-----------|----------------|-------------
m_tBodyAccMeanXYZ|time|body|accelerometer|no|no|mean
m_tBodyAccStdXYZ|time|body|accelerometer|no|no|standard deviation
m_tGravityAccMeanXYZ|time|gravity|accelerometer|no|no|mean
m_tGravityAccStdXYZ|time|gravity|accelerometer|no|no|standard deviation
m_tBodyAccJerkMeanXYZ|time|body|accelerometer|yes|no|mean
m_tBodyAccJerkStdXYZ|time|body|accelerometer|yes|no|standard deviation
m_tBodyGyroMeanXYZ|time|body|gyroscope|no|no|mean
m_tBodyGyroStdXYZ|time|body|gyroscope|no|no|standard deviation
m_tBodyGyroJerkMeanXYZ|time|body|gyroscope|yes|no|mean
m_tBodyGyroJerkStdXYZ|time|body|gyroscope|yes|no|standard deviation
m_tBodyAccMagMean|time|body|accelerometer|no|yes|mean
m_tBodyAccMagStd|time|body|accelerometer|no|yes|standard deviation
m_tGravityAccMagMean|time|gravity|accelerometer|no|yes|mean
m_tGravityAccMagStd|time|gravity|accelerometer|no|yes|standard deviation
m_tBodyAccJerkMagMean|time|body|accelerometer|yes|yes|mean
m_tBodyAccJerkMagStd|time|body|accelerometer|yes|yes|standard deviation
m_tBodyGyroMagMean|time|body|gyroscope|no|yes|mean
m_tBodyGyroMagStd|time|body|gyroscope|no|yes|standard deviation
m_tBodyGyroJerkMagMean|time|body|gyroscope|yes|yes|mean
m_tBodyGyroJerkMagStd|time|body|gyroscope|yes|yes|standard deviation
m_fBodyAccMeanXYZ|frequency|body|accelerometer|no|no|mean
m_fBodyAccStdXYZ|frequency|body|accelerometer|no|no|standard deviation
m_fBodyAccMeanFreqXYZ|frequency|body|accelerometer|no|no|mean
m_fBodyAccJerkMeanXYZ|frequency|body|accelerometer|yes|no|mean
m_fBodyAccJerkStdXYZ|frequency|body|accelerometer|yes|no|standard deviation
m_fBodyAccJerkMeanFreqXYZ|frequency|body|accelerometer|yes|no|mean
m_fBodyGyroMeanXYZ|frequency|body|gyroscope|no|no|mean
m_fBodyGyroStdXYZ|frequency|body|gyroscope|no|no|standard deviation
m_fBodyGyroMeanFreqXYZ|frequency|body|gyroscope|no|no|mean
m_fBodyAccMagMean|frequency|body|accelerometer|no|yes|mean
m_fBodyAccMagStd|frequency|body|accelerometer|no|yes|standard deviation
m_fBodyAccMagMeanFreq|frequency|body|accelerometer|no|yes|mean
m_fBodyBodyAccJerkMagMean|frequency|body|accelerometer|yes|yes|mean
m_fBodyBodyAccJerkMagStd|frequency|body|accelerometer|yes|yes|standard deviation
m_fBodyBodyAccJerkMagMeanFreq|frequency|body|accelerometer|yes|yes|mean
m_fBodyBodyGyroMagMean|frequency|body|gyroscope|no|yes|mean
m_fBodyBodyGyroMagStd|frequency|body|gyroscope|no|yes|standard deviation
m_fBodyBodyGyroMagMeanFreq|frequency|body|gyroscope|no|yes|mean
m_fBodyBodyGyroJerkMagMean|frequency|body|gyroscope|yes|yes|mean
m_fBodyBodyGyroJerkMagStd|frequency|body|gyroscope|yes|yes|standard deviation
m_fBodyBodyGyroJerkMagMeanFreq|frequency|body|gyroscope|yes|yes|mean

This is the the detailed description from original dataset.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a 
median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the 
acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another 
low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and 
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.