# Tidy Data Assignment

This repository contains the code for the final assignment for the 'Getting and Cleaning Data' module. 

The raw data was obtained from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The dataset shows a normalized value of different measurements of 30 subjects performing six activities. 

The code is described as follows:

1. The first step is getting the data. The code assumes the data is located in a folder called "data", but it can be modified changing the routes where the files are located.

2. The training and testing set are read from the corresponding files.

3. The features names is read from 'features.txt' and it is assigned to the 'X' sets containing the measurements. The activities are stored in the 'y' sets and subject codes is located in the 'subject' dataset.

4. Any column that does not contain 'mean()' or 'std()' is dropped from the 'X' sets.

5. The datasets are binded together column-wise for the 'X', 'y' and 'subject' sets for the training training and test sets, and then row-wise to merge the resulting sets.

6. The activity column is changed for the corresponding labels described in 'activity_labels.txt'

7. The column names are changed to favor readability.

8. The dataset is grouped by activity and subject, and then the final tidy set is obtained summarizing every column with a mean function.

9. The tidy set is stored. To read it, please use the 'read.table' function as:

```
tidy_set<-read.table("New_Tidy_Set.txt",header = TRUE)
```
