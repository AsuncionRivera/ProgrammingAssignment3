#Load needed Libraries
install.packages("dplyr")
install.packages("data.table")

library(dplyr)
library(data.table)

#Set working directory
setwd("D:/DOST Coursera/Module 3/Week 4")

#Download file from url https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
dwnld_frm_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file (dwnld_frm_url, destfile="D:/DOST Coursera/Module 3/Week 4/zipfiles.zip")
unzip(zipfile = "zipfiles.zip", overwrite=TRUE)

#1. Merges the training and the test sets to create one data set.

setwd("D:/DOST Coursera/Module 3/Week 4/UCI HAR Dataset")         #new working directory

to_be_merged1 <- read.table("train/subject_train.txt")            #reads the table subject_train.txt
to_be_merged2 <- read.table("test/subject_test.txt")              #reads the table subject_text.txt
merged_subject <- rbind(to_be_merged1, to_be_merged2)             #merges subject_train.txt and subject_text.txt
head(merged_subject)                                              #checks the merged subject

to_be_merged3 <- read.table("test/X_test.txt")                    #reads X_text.txt
to_be_merged4 <- read.table("train/X_train.txt")                  #reads X_train.txt
merged_X <- rbind(to_be_merged3, to_be_merged4)                   #merges X_text.txt and X_train.txt
head(merged_X)                                                    #checks the merged X

to_be_merged5 <- read.table("train/y_train.txt")                  #reads y_text.txt
to_be_merged6 <- read.table("test/y_test.txt")                    #reads y_train.txt
merged_y <- rbind(to_be_merged3, to_be_merged4)                   #merges y_text.txt and y_train.txt
head(merged_y)                                                    #checks the merged y

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt")                            #reads the table features.txt
head(features)                                                    #checks features
mean_n_std <- grep("-mean\\(\\)|std\\(\\)", features[,2])         #gets mean() or std() only
mean_n_std                                                        #checks if you were able to get only the mean() or std()
merged_X <- merged_X[, mean_n_std]                                #subsetting
merged_X                                                          #checks merged_X


#3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("activity_labels.txt")              #reads the table activity_labels.txt
activity_labels <- activity_labels [,2]


#4. Appropriately labels the data set with descriptive variable names.
names(merged_subject) <- "subject"                                #labels merged_subject with "subject"
names(merged_X) <- "set"                                          #labels merged_X with "set" for training and test set
names(merged_y) <- "labels"                                       #labels merged_y with "labels" for training and test labels

merged <- cbind(merged_subject, merged_X, merged_y)               #merges merged_subject, merged_X, merged_y
write.table(merged, "merged_data_set.txt")                        #writes the merged data into a new data set

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#Sorry I'm unable to do this
