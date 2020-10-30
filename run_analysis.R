library(dplyr)
library(data.table)
##Dataset used for this assignment
##The following code assumes that the sets are located in a folder called "Data"
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")


##Read data from the training set
X_train<-read.table("Data/train/X_train.txt")
y_train<-read.table("Data/train/y_train.txt")
subject_train<-read.table("Data/train/subject_train.txt")

##Read data from the test set
X_test<-read.table("Data/test/X_test.txt")
y_test<-read.table("Data/test/y_test.txt")
subject_test<-read.table("Data/test/subject_test.txt")

##Bind  corresponding tables
X_set<-rbind(X_train,X_test)
y_set<-rbind(y_train,y_test)
subject_set<-rbind(subject_train,subject_test)

##Getting features names
feat_names<-read.table("Data/features.txt")

##Assign names to each table
names(X_set)<-feat_names$V2
names(y_set)<-"Activity"
names(subject_set)<-"Subject"

##Drop any column that is not a mean or std measure
X_set_filtered<-select(X_set,grep("(mean\\(\\)|std)",names(X_set),value=TRUE))

##Bind Sets to get the complete set
complete_set<-cbind(subject_set,y_set,X_set_filtered)

##Getting the activity names
activity_labels<-read.table("data/activity_labels.txt")

##Transforming the activity number in labels
complete_set$Activity<-factor(complete_set$Activity,levels=1:6, labels = activity_labels$V2)

##Relabeling the dataset with clearer names
names(complete_set)<-gsub("tBodyAcc-","BodyAcc(time)", names(complete_set))
names(complete_set)<-gsub("tGravityAcc-","GravityAcc(time)", names(complete_set))
names(complete_set)<-gsub("tBodyAccMag-","BodyAccMag(time)", names(complete_set))
names(complete_set)<-gsub("tBodyAccJerk-","BodyAccJerk(time)", names(complete_set))
names(complete_set)<-gsub("tBodyGyro-","BodyGyro(time)", names(complete_set))
names(complete_set)<-gsub("tBodyGyroJerk-","BodyGyroJerk(time)", names(complete_set))
names(complete_set)<-gsub("tGravityAccMag-","GravityAccMag(time)", names(complete_set))
names(complete_set)<-gsub("tBodyAccJerkMag-","BodyAccJerkMag(time)", names(complete_set))
names(complete_set)<-gsub("tBodyGyroMag-","BodyGyroMag(time)", names(complete_set))
names(complete_set)<-gsub("tBodyGyroJerkMag-","BodyGyroJerkMag(time)", names(complete_set))


names(complete_set)<-gsub("fBodyAcc-","BodyAcc(FFT)", names(complete_set))
names(complete_set)<-gsub("fBodyAccJerk-","BodyAccJerk(FFT)", names(complete_set))
names(complete_set)<-gsub("fBodyGyro-","BodyGyro(FFT)", names(complete_set))
names(complete_set)<-gsub("fBodyAccMag-","BodyAccMag(FFT)", names(complete_set))
names(complete_set)<-gsub("fBodyBodyAccJerkMag-","BodyAccJerkMag(FFT)", names(complete_set))
names(complete_set)<-gsub("fBodyBodyGyroMag-","BodyGyroMag(FFT)", names(complete_set))
names(complete_set)<-gsub("fBodyBodyGyroJerkMag-","BodyGyroJerkMag(FFT)", names(complete_set))

names(complete_set)<-gsub("mean\\(\\)","mean", names(complete_set))
names(complete_set)<-gsub("std\\(\\)","std", names(complete_set))
###New tidy dataset with the average values of each variable

grouped_set<-group_by(complete_set,Subject,Activity)
new_set<-summarise_all(grouped_set,mean)

##Writing tidy set
write.table(new_set, "New_Tidy_Set.txt", row.names = FALSE)