#1. Merges the training and the test sets to create one data set.

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
#Sorry I'm unable to do this

#3. Uses descriptive activity names to name the activities in the data set
activitiy_labels<- read.table("activity_labels.txt")              #reads the table activity_labels.txt
#Sorry I'm unable to do this

#4. Appropriately labels the data set with descriptive variable names.
names(merged_subject) <- "subject"                                #labels merged_subject with "subject"
names(merged_X) <- "set"                                          #labels merged_X with "set" for training and test set
names(merged_y) <- "labels"                                       #labels merged_y with "labels" for training and test labels

merged <- cbind(merged_subject, merged_X, merged_y)               #merges merged_subject, merged_X, merged_y
write.table(merged, "merged_data_set.txt")                        #writes the merged data into a new data set

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#Sorry I'm unable to do this
