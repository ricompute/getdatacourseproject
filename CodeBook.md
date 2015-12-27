# Code Book

## Study Design
The data contained in `tidy_dataset.txt` come from the Human Activity Recognition Using Smartphones Dataset<sup>[1](#fn1)</sup> (see `Original_README.txt` for detailed background info). Briefly, 30 subjects performed 6 different types of activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING) while wearing a smartphone. Using the accelerometer and gyroscope in the smartphone, triaxial (XYZ) linear acceleration and angular velocity were measured at 50Hz. This `tidy_dataset` contains the mean of each measured variable for each activity and each subject.

## Code Book
The first two variables contained in this `tidy_dataset` are the Activity (one of the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING) and the Subject (an ID number ranging from 1 to 30 corresponding to each of the participants in the study).

The naming scheme of the quantitative variables wararnts some explanation. Variables measuring acceleration (containing "Accelerometer" in their names) are measured in standard gravity units 'g'. Variables measuring angular velocity (containing "Gyroscope" in their names) are measured in radians/second. Variables beginning with "time" are in the time domain. Variables beginning with "frequency" are in the frequency domain (the result of a Fast Fourier Transform). Variables containing "Jerk" were derived in time to obtain Jerk signals. Variables containing "Mean" are the means, while variables containing "STD" are standard deviations. Using these rules to interpret variable names, the reader should be able to determine the quantity measured by each variable.

The means of the following variables for each activity and each subject are contained in this `tidy_dataset`:

timeBodyAccelerometerMeanX   
timeBodyAccelerometerMeanY   
timeBodyAccelerometerMeanZ   
timeGravityAccelerometerMeanX   
timeGravityAccelerometerMeanY   
timeGravityAccelerometerMeanZ   
timeBodyAccelerometerJerkMeanX   
timeBodyAccelerometerJerkMeanY   
timeBodyAccelerometerJerkMeanZ   
timeBodyGyroscopeMeanX   
timeBodyGyroscopeMeanY   
timeBodyGyroscopeMeanZ   
timeBodyGyroscopeJerkMeanX   
timeBodyGyroscopeJerkMeanY   
timeBodyGyroscopeJerkMeanZ   
timeBodyAccelerometerMagnitudeMean   
timeGravityAccelerometerMagnitudeMean   
timeBodyAccelerometerJerkMagnitudeMean   
timeBodyGyroscopeMagnitudeMean   
timeBodyGyroscopeJerkMagnitudeMean   
frequencyBodyAccelerometerMeanX   
frequencyBodyAccelerometerMeanY   
frequencyBodyAccelerometerMeanZ   
frequencyBodyAccelerometerMeanFreqX   
frequencyBodyAccelerometerMeanFreqY   
frequencyBodyAccelerometerMeanFreqZ   
frequencyBodyAccelerometerJerkMeanX   
frequencyBodyAccelerometerJerkMeanY   
frequencyBodyAccelerometerJerkMeanZ   
frequencyBodyAccelerometerJerkMeanFreqX   
frequencyBodyAccelerometerJerkMeanFreqY   
frequencyBodyAccelerometerJerkMeanFreqZ   
frequencyBodyGyroscopeMeanX   
frequencyBodyGyroscopeMeanY   
frequencyBodyGyroscopeMeanZ   
frequencyBodyGyroscopeMeanFreqX   
frequencyBodyGyroscopeMeanFreqY   
frequencyBodyGyroscopeMeanFreqZ   
frequencyBodyAccelerometerMagnitudeMean   
frequencyBodyAccelerometerMagnitudeMeanFreq   
frequencyBodyBodyAccelerometerJerkMagnitudeMean   
frequencyBodyBodyAccelerometerJerkMagnitudeMeanFreq   
frequencyBodyBodyGyroscopeMagnitudeMean   
frequencyBodyBodyGyroscopeMagnitudeMeanFreq   
frequencyBodyBodyGyroscopeJerkMagnitudeMean   
frequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq   
angletBodyAccelerometerMeangravity   
angletBodyAccelerometerJerkMeangravityMean   
angletBodyGyroscopeMeangravityMean   
angletBodyGyroscopeJerkMeangravityMean   
angleXgravityMean   
angleYgravityMean   
angleZgravityMean   
timeBodyAccelerometerSTDX   
timeBodyAccelerometerSTDY   
timeBodyAccelerometerSTDZ   
timeGravityAccelerometerSTDX   
timeGravityAccelerometerSTDY   
timeGravityAccelerometerSTDZ   
timeBodyAccelerometerJerkSTDX   
timeBodyAccelerometerJerkSTDY   
timeBodyAccelerometerJerkSTDZ   
timeBodyGyroscopeSTDX   
timeBodyGyroscopeSTDY   
timeBodyGyroscopeSTDZ   
timeBodyGyroscopeJerkSTDX   
timeBodyGyroscopeJerkSTDY   
timeBodyGyroscopeJerkSTDZ   
timeBodyAccelerometerMagnitudeSTD   
timeGravityAccelerometerMagnitudeSTD   
timeBodyAccelerometerJerkMagnitudeSTD   
timeBodyGyroscopeMagnitudeSTD   
timeBodyGyroscopeJerkMagnitudeSTD   
frequencyBodyAccelerometerSTDX   
frequencyBodyAccelerometerSTDY   
frequencyBodyAccelerometerSTDZ   
frequencyBodyAccelerometerJerkSTDX   
frequencyBodyAccelerometerJerkSTDY   
frequencyBodyAccelerometerJerkSTDZ   
frequencyBodyGyroscopeSTDX   
frequencyBodyGyroscopeSTDY   
frequencyBodyGyroscopeSTDZ   
frequencyBodyAccelerometerMagnitudeSTD   
frequencyBodyBodyAccelerometerJerkMagnitudeSTD   
frequencyBodyBodyGyroscopeMagnitudeSTD   
frequencyBodyBodyGyroscopeJerkMagnitudeSTD  

# Reference
<a name="fn1">1</a>: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
