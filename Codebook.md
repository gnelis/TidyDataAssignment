# Code Book
================

This is the code book for the Tidy Dataset obtained by 'run\_analysis.R'.

The observations are defined by subject number and activity, and each
calculated field shows the summary (as the mean value) of the corresponding field along
every observation.

The data was obtained from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The dataset shows a normalized value of different measurements of 30 subjects performing six activities. 

## Code Table

Note: (XYZ) after a field name indicates that the feature is calculated
along each one of those Axis

| Field Name                   | Description                                                                                               | Valid values                                                                       |
| ---------------------------- | --------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| Subject                      | Indicator of the subject of the experiment                                                                | \[1-30\]                                                                            |
| Activity                     | Activity performed by each subject                                                                        | ‘WALKING’, ‘WALKING\_UPSTAIRS’, ‘WALKING\_DOWNSTAIRS’, ‘SITTING’, ‘STANDING’, ‘LAYING’ |
| BodyAcc.time.mean.(XYZ)      | Mean Value of the Body accelerometer Signals in time domain                                               | \[-1,1\]                                                                           |
| BodyAcc.time.std.(XYZ)       | Standard Deviation of the Body accelerometer signals in time domain                                       | \[-1,1\]                                                                           |
| GravityAcc.time.mean.(XYZ)   | Mean Value of the Gravity accelerometer Signals in time domain                                            | \[-1,1\]                                                                           |
| GravityAcc.time.std.(XYZ)    | Standard Deviation of the Gravity accelerometer Signals in time domain                                    | \[-1,1\]                                                                           |
| BodyAccJerk.time.mean.(XYZ)  | Mean Value of the Body accelerometer Jerk Signals in time domain                                          | \[-1,1\]                                                                           |
| BodyAccJerk.time.std.(XYZ)   | Standard Deviation of the Body accelerometer Jerk Signals in time domain                                  | \[-1,1\]                                                                           |
| BodyGyro.time.mean.(XYZ)     | Mean Value of the Body Gyroscope Signals in time domain                                                   | \[-1,1\]                                                                           |
| BodyGyro.time.std.(XYZ)      | Standard Deviation of the Body Gyroscope Signals in time domain                                           | \[-1,1\]                                                                           |
| BodyGyroJerk.time.mean.(XYZ) | Mean Value of the Body Gyroscope Jerk Signals in time domain                                              | \[-1,1\]                                                                           |
| BodyGyroJerk.time.std.(XYZ)  | Standard Deviation of the Body Gyroscope Jerk Signals in time domain                                      | \[-1,1\]                                                                           |
| BodyAccMag.time.mean         | Mean Value of the Magnitude of Body accelerometer Signals in time domain                                  | \[-1,1\]                                                                           |
| BodyAccMag.time.std          | Standard Deviation of the Magnitude of Body accelerometer Signals in time domain                          | \[-1,1\]                                                                           |
| GravityAccMag.time.mean      | Mean of the Magnitude of gravity gyroscope Signals in time domain                                         | \[-1,1\]                                                                           |
| GravityAccMag.time.std       | Standard Deviation of the Magnitude of gravity gyroscope Signals in time domain                           | \[-1,1\]                                                                           |
| BodyAccJerkMag.time.mean     | Mean Value of the magnitude of Body Accelerometer Jerk Signals in time domain                             | \[-1,1\]                                                                           |
| BodyAccJerkMag.time.std      | Standard Deviation of the magnitude of Body Accelerometer Jerk Signals in time domain                     | \[-1,1\]                                                                           |
| BodyGyroMag.time.mean        | Mean Value of the magnitude of Body Gyroscope Signals in time domain                                      | \[-1,1\]                                                                           |
| BodyGyroMag.time.std         | Standard Deviation of the magnitude of Body Gyroscope Signals in time domain                              | \[-1,1\]                                                                           |
| BodyGyroJerkMag.time.mean    | Mean Value of the magnitude of Body Gyroscope Jerk Signals in time domain                                 | \[-1,1\]                                                                           |
| BodyGyroJerkMag.time.std     | Standard Deviation of the magnitude of Body Gyroscope Jerk Signals in time domain                         | \[-1,1\]                                                                           |
| BodyAcc.FFT.mean.(XYZ)       | Mean Value of the Body accelerometer Signals with a Fast Fourier Transformation                           | \[-1,1\]                                                                           |
| BodyAcc.FFT.std.(XYZ)        | Standard Deviation of the Body accelerometer signals with a Fast Fourier Transformation                   | \[-1,1\]                                                                           |
| BodyAccJerk.FFT.mean.(XYZ)   | Mean Value of the Body accelerometer Jerk Signals with a Fast Fourier Transformation                      | \[-1,1\]                                                                           |
| BodyAccJerk.FFT.std.(XYZ)    | Standard Deviation of the Body accelerometer Jerk Signals with a Fast Fourier Transformation              | \[-1,1\]                                                                           |
| BodyGyro.FFT.mean.(XYZ)      | Mean Value of the Body Gyroscope Signals with a Fast Fourier Transformation                               | \[-1,1\]                                                                           |
| BodyGyro.FFT.std.(XYZ)       | Standard Deviation of the Body Gyroscope Signals with a Fast Fourier Transformation                       | \[-1,1\]                                                                           |
| BodyAccMag.FFT.mean          | Mean Value of the Magnitude of Body accelerometer Signals with a Fast Fourier Transformation              | \[-1,1\]                                                                           |
| BodyAccMag.FFT.std           | Standard Deviation of the Magnitude of Body accelerometer Signals with a Fast Fourier Transformation      | \[-1,1\]                                                                           |
| BodyAccJerkMag.FFT.mean      | Mean Value of the magnitude of Body Accelerometer Jerk Signals with a Fast Fourier Transformation         | \[-1,1\]                                                                           |
| BodyAccJerkMag.FFT.std       | Standard Deviation of the magnitude of Body Accelerometer Jerk Signals with a Fast Fourier Transformation | \[-1,1\]                                                                           |
| BodyGyroMag.FFT.mean         | Mean Value of the magnitude of Body Gyroscope Signals with a Fast Fourier Transformation                  | \[-1,1\]                                                                           |
| BodyGyroMag.FFT.std          | Standard Deviation of the magnitude of Body Gyroscope Signals with a Fast Fourier Transformation          | \[-1,1\]                                                                           |
| BodyGyroJerkMag.FFT.mean     | Mean Value of the magnitude of Body Gyroscope Jerk Signals with a Fast Fourier Transformation             | \[-1,1\]                                                                           |
| BodyGyroJerkMag.FFT.std      | Standard Deviation of the magnitude of Body Gyroscope Jerk Signals with a Fast Fourier Transformation     | \[-1,1\]                                                                           |
